package org.eclipse.jetty.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public class RolloverFileOutputStream extends FilterOutputStream {
    private static Timer a;
    private a b;
    private SimpleDateFormat c;
    private SimpleDateFormat d;
    private String e;
    private File f;
    private boolean g;
    private int h;

    public RolloverFileOutputStream(String str) {
        this(str, true, 31);
    }

    public RolloverFileOutputStream(String str, boolean z) {
        this(str, z, 31);
    }

    public RolloverFileOutputStream(String str, boolean z, int i) {
        this(str, z, i, TimeZone.getDefault());
    }

    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone) {
        this(str, z, i, timeZone, null, null);
    }

    public RolloverFileOutputStream(String str, boolean z, int i, TimeZone timeZone, String str2, String str3) {
        super(null);
        this.d = new SimpleDateFormat(str2 == null ? "yyyy_MM_dd" : str2);
        this.c = new SimpleDateFormat(str3 == null ? "HHmmssSSS" : str3);
        this.c.setTimeZone(timeZone);
        this.d.setTimeZone(timeZone);
        if (str != null) {
            str = str.trim();
            if (str.length() == 0) {
                str = null;
            }
        }
        if (str == null) {
            throw new IllegalArgumentException("Invalid filename");
        }
        this.e = str;
        this.g = z;
        this.h = i;
        a();
        synchronized (RolloverFileOutputStream.class) {
            if (a == null) {
                a = new Timer(RolloverFileOutputStream.class.getName(), true);
            }
            this.b = new a();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeZone(timeZone);
            GregorianCalendar gregorianCalendar = new GregorianCalendar(calendar.get(1), calendar.get(2), calendar.get(5), 23, 0);
            gregorianCalendar.setTimeZone(timeZone);
            gregorianCalendar.add(10, 1);
            a.scheduleAtFixedRate(this.b, gregorianCalendar.getTime(), DateUtils.MILLIS_PER_DAY);
        }
    }

    public String getFilename() {
        return this.e;
    }

    public String getDatedFilename() {
        if (this.f == null) {
            return null;
        }
        return this.f.toString();
    }

    public int getRetainDays() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        this.e = new File(this.e).getCanonicalPath();
        File file = new File(this.e);
        File file2 = new File(file.getParent());
        if (!file2.isDirectory() || !file2.canWrite()) {
            throw new IOException("Cannot write log directory " + file2);
        }
        Date date = new Date();
        String name = file.getName();
        int iIndexOf = name.toLowerCase(Locale.ENGLISH).indexOf("yyyy_mm_dd");
        if (iIndexOf >= 0) {
            file = new File(file2, name.substring(0, iIndexOf) + this.d.format(date) + name.substring(iIndexOf + "yyyy_mm_dd".length()));
        }
        if (file.exists() && !file.canWrite()) {
            throw new IOException("Cannot write log file " + file);
        }
        if (this.out == null || !file.equals(this.f)) {
            this.f = file;
            if (!this.g && file.exists()) {
                file.renameTo(new File(file.toString() + "." + this.c.format(date)));
            }
            OutputStream outputStream = this.out;
            this.out = new FileOutputStream(file.toString(), this.g);
            if (outputStream != null) {
                outputStream.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.h > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            File file = new File(this.e);
            File file2 = new File(file.getParent());
            String name = file.getName();
            int iIndexOf = name.toLowerCase(Locale.ENGLISH).indexOf("yyyy_mm_dd");
            if (iIndexOf >= 0) {
                String strSubstring = name.substring(0, iIndexOf);
                String strSubstring2 = name.substring(iIndexOf + "yyyy_mm_dd".length());
                for (String str : file2.list()) {
                    if (str.startsWith(strSubstring) && str.indexOf(strSubstring2, strSubstring.length()) >= 0) {
                        File file3 = new File(file2, str);
                        if ((jCurrentTimeMillis - file3.lastModified()) / DateUtils.MILLIS_PER_DAY > this.h) {
                            file3.delete();
                        }
                    }
                }
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.out.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (RolloverFileOutputStream.class) {
            try {
                super.close();
                this.out = null;
                this.f = null;
                this.b.cancel();
            } catch (Throwable th) {
                this.out = null;
                this.f = null;
                throw th;
            }
        }
    }

    class a extends TimerTask {
        private a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                RolloverFileOutputStream.this.a();
                RolloverFileOutputStream.this.b();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
