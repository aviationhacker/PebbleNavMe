package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.print.pdf.PrintedPdfDocument;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class PrintHelperKitkat {
    final Context a;
    BitmapFactory.Options b = null;
    private final Object f = new Object();
    int c = 2;
    int d = 2;
    int e = 1;

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    PrintHelperKitkat(Context context) {
        this.a = context;
    }

    public void a(int i) {
        this.c = i;
    }

    public int a() {
        return this.c;
    }

    public void b(int i) {
        this.d = i;
    }

    public void c(int i) {
        this.e = i;
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.d;
    }

    public void a(final String str, final Bitmap bitmap, final OnPrintFinishCallback onPrintFinishCallback) {
        if (bitmap != null) {
            final int i = this.c;
            PrintManager printManager = (PrintManager) this.a.getSystemService("print");
            PrintAttributes.MediaSize mediaSize = PrintAttributes.MediaSize.UNKNOWN_PORTRAIT;
            if (bitmap.getWidth() > bitmap.getHeight()) {
                mediaSize = PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE;
            }
            printManager.print(str, new PrintDocumentAdapter() { // from class: android.support.v4.print.PrintHelperKitkat.1
                private PrintAttributes f;

                @Override // android.print.PrintDocumentAdapter
                public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    this.f = printAttributes2;
                    layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(str).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
                }

                @Override // android.print.PrintDocumentAdapter
                public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
                    PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.a, this.f);
                    Bitmap bitmapA = PrintHelperKitkat.this.a(bitmap, this.f.getColorMode());
                    try {
                        PdfDocument.Page pageStartPage = printedPdfDocument.startPage(1);
                        pageStartPage.getCanvas().drawBitmap(bitmapA, PrintHelperKitkat.this.a(bitmapA.getWidth(), bitmapA.getHeight(), new RectF(pageStartPage.getInfo().getContentRect()), i), null);
                        printedPdfDocument.finishPage(pageStartPage);
                        try {
                            printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                            writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                        } catch (IOException e) {
                            Log.e("PrintHelperKitkat", "Error writing printed content", e);
                            writeResultCallback.onWriteFailed(null);
                        }
                        if (printedPdfDocument != null) {
                            printedPdfDocument.close();
                        }
                        if (parcelFileDescriptor != null) {
                            try {
                                parcelFileDescriptor.close();
                            } catch (IOException e2) {
                            }
                        }
                        if (bitmapA != bitmap) {
                            bitmapA.recycle();
                        }
                    } finally {
                    }
                }

                @Override // android.print.PrintDocumentAdapter
                public void onFinish() {
                    if (onPrintFinishCallback != null) {
                        onPrintFinishCallback.onFinish();
                    }
                }
            }, new PrintAttributes.Builder().setMediaSize(mediaSize).setColorMode(this.d).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Matrix a(int i, int i2, RectF rectF, int i3) {
        float fMin;
        Matrix matrix = new Matrix();
        float fWidth = rectF.width() / i;
        if (i3 == 2) {
            fMin = Math.max(fWidth, rectF.height() / i2);
        } else {
            fMin = Math.min(fWidth, rectF.height() / i2);
        }
        matrix.postScale(fMin, fMin);
        matrix.postTranslate((rectF.width() - (i * fMin)) / 2.0f, (rectF.height() - (fMin * i2)) / 2.0f);
        return matrix;
    }

    public void a(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(str, uri, onPrintFinishCallback, this.c);
        PrintManager printManager = (PrintManager) this.a.getSystemService("print");
        PrintAttributes.Builder builder = new PrintAttributes.Builder();
        builder.setColorMode(this.d);
        if (this.e == 1) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_LANDSCAPE);
        } else if (this.e == 2) {
            builder.setMediaSize(PrintAttributes.MediaSize.UNKNOWN_PORTRAIT);
        }
        printManager.print(str, anonymousClass2, builder.build());
    }

    /* JADX INFO: renamed from: android.support.v4.print.PrintHelperKitkat$2, reason: invalid class name */
    class AnonymousClass2 extends PrintDocumentAdapter {
        AsyncTask<Uri, Boolean, Bitmap> a;
        Bitmap b = null;
        final /* synthetic */ String c;
        final /* synthetic */ Uri d;
        final /* synthetic */ OnPrintFinishCallback e;
        final /* synthetic */ int f;
        private PrintAttributes h;

        AnonymousClass2(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback, int i) {
            this.c = str;
            this.d = uri;
            this.e = onPrintFinishCallback;
            this.f = i;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.support.v4.print.PrintHelperKitkat$2$1] */
        @Override // android.print.PrintDocumentAdapter
        public void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter.LayoutResultCallback layoutResultCallback, Bundle bundle) {
            this.h = printAttributes2;
            if (cancellationSignal.isCanceled()) {
                layoutResultCallback.onLayoutCancelled();
            } else if (this.b != null) {
                layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(this.c).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
            } else {
                this.a = new AsyncTask<Uri, Boolean, Bitmap>() { // from class: android.support.v4.print.PrintHelperKitkat.2.1
                    @Override // android.os.AsyncTask
                    protected void onPreExecute() {
                        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: android.support.v4.print.PrintHelperKitkat.2.1.1
                            @Override // android.os.CancellationSignal.OnCancelListener
                            public void onCancel() {
                                AnonymousClass2.this.a();
                                cancel(false);
                            }
                        });
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Bitmap doInBackground(Uri... uriArr) {
                        try {
                            return PrintHelperKitkat.this.a(AnonymousClass2.this.d, 3500);
                        } catch (FileNotFoundException e) {
                            return null;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onPostExecute(Bitmap bitmap) {
                        super.onPostExecute(bitmap);
                        AnonymousClass2.this.b = bitmap;
                        if (bitmap != null) {
                            layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(AnonymousClass2.this.c).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ? false : true);
                        } else {
                            layoutResultCallback.onLayoutFailed(null);
                        }
                        AnonymousClass2.this.a = null;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                    public void onCancelled(Bitmap bitmap) {
                        layoutResultCallback.onLayoutCancelled();
                        AnonymousClass2.this.a = null;
                    }
                }.execute(new Uri[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            synchronized (PrintHelperKitkat.this.f) {
                if (PrintHelperKitkat.this.b != null) {
                    PrintHelperKitkat.this.b.requestCancelDecode();
                    PrintHelperKitkat.this.b = null;
                }
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onFinish() {
            super.onFinish();
            a();
            if (this.a != null) {
                this.a.cancel(true);
            }
            if (this.e != null) {
                this.e.onFinish();
            }
            if (this.b != null) {
                this.b.recycle();
                this.b = null;
            }
        }

        @Override // android.print.PrintDocumentAdapter
        public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, PrintDocumentAdapter.WriteResultCallback writeResultCallback) {
            PrintedPdfDocument printedPdfDocument = new PrintedPdfDocument(PrintHelperKitkat.this.a, this.h);
            Bitmap bitmapA = PrintHelperKitkat.this.a(this.b, this.h.getColorMode());
            try {
                PdfDocument.Page pageStartPage = printedPdfDocument.startPage(1);
                pageStartPage.getCanvas().drawBitmap(bitmapA, PrintHelperKitkat.this.a(this.b.getWidth(), this.b.getHeight(), new RectF(pageStartPage.getInfo().getContentRect()), this.f), null);
                printedPdfDocument.finishPage(pageStartPage);
                try {
                    printedPdfDocument.writeTo(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                    writeResultCallback.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                } catch (IOException e) {
                    Log.e("PrintHelperKitkat", "Error writing printed content", e);
                    writeResultCallback.onWriteFailed(null);
                }
                if (printedPdfDocument != null) {
                    printedPdfDocument.close();
                }
                if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                    } catch (IOException e2) {
                    }
                }
                if (bitmapA != this.b) {
                    bitmapA.recycle();
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(Uri uri, int i) {
        BitmapFactory.Options options;
        int i2 = 1;
        Bitmap bitmapA = null;
        if (i <= 0 || uri == null || this.a == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        a(uri, options2);
        int i3 = options2.outWidth;
        int i4 = options2.outHeight;
        if (i3 > 0 && i4 > 0) {
            int iMax = Math.max(i3, i4);
            while (iMax > i) {
                iMax >>>= 1;
                i2 <<= 1;
            }
            if (i2 > 0 && Math.min(i3, i4) / i2 > 0) {
                synchronized (this.f) {
                    this.b = new BitmapFactory.Options();
                    this.b.inMutable = true;
                    this.b.inSampleSize = i2;
                    options = this.b;
                }
                try {
                    bitmapA = a(uri, options);
                    synchronized (this.f) {
                        this.b = null;
                    }
                } catch (Throwable th) {
                    synchronized (this.f) {
                        this.b = null;
                        throw th;
                    }
                }
            }
        }
        return bitmapA;
    }

    private Bitmap a(Uri uri, BitmapFactory.Options options) {
        InputStream inputStreamOpenInputStream = null;
        if (uri == null || this.a == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        try {
            inputStreamOpenInputStream = this.a.getContentResolver().openInputStream(uri);
            return BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
        } finally {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e) {
                    Log.w("PrintHelperKitkat", "close fail ", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(Bitmap bitmap, int i) {
        if (i == 1) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            canvas.setBitmap(null);
            return bitmapCreateBitmap;
        }
        return bitmap;
    }
}
