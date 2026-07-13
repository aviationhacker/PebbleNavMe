package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class DateUtils {
    public static final long MILLIS_PER_DAY = 86400000;
    public static final long MILLIS_PER_HOUR = 3600000;
    public static final long MILLIS_PER_MINUTE = 60000;
    public static final long MILLIS_PER_SECOND = 1000;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;
    private static final int[][] a = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, SEMI_MONTH}, new int[]{1}, new int[]{0}};

    public static boolean isSameDay(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        return isSameDay(calendar, calendar2);
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static boolean isSameInstant(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return date.getTime() == date2.getTime();
    }

    public static boolean isSameInstant(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.getTime().getTime() == calendar2.getTime().getTime();
    }

    public static boolean isSameLocalTime(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(14) == calendar2.get(14) && calendar.get(13) == calendar2.get(13) && calendar.get(12) == calendar2.get(12) && calendar.get(11) == calendar2.get(11) && calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1) && calendar.get(0) == calendar2.get(0) && calendar.getClass() == calendar2.getClass();
    }

    public static Date parseDate(String str, String... strArr) {
        return a(str, strArr, true);
    }

    public static Date parseDateStrictly(String str, String... strArr) {
        return a(str, strArr, false);
    }

    private static Date a(String str, String[] strArr, boolean z) throws ParseException {
        if (str == null || strArr == null) {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat();
        simpleDateFormat.setLenient(z);
        ParsePosition parsePosition = new ParsePosition(0);
        for (String str2 : strArr) {
            simpleDateFormat.applyPattern(str2.endsWith("ZZ") ? str2.substring(0, str2.length() - 1) : str2);
            parsePosition.setIndex(0);
            String strReplaceAll = str2.endsWith("ZZ") ? str.replaceAll("([-+][0-9][0-9]):([0-9][0-9])$", "$1$2") : str;
            Date date = simpleDateFormat.parse(strReplaceAll, parsePosition);
            if (date != null && parsePosition.getIndex() == strReplaceAll.length()) {
                return date;
            }
        }
        throw new ParseException("Unable to parse the date: " + str, -1);
    }

    public static Date addYears(Date date, int i) {
        return a(date, 1, i);
    }

    public static Date addMonths(Date date, int i) {
        return a(date, 2, i);
    }

    public static Date addWeeks(Date date, int i) {
        return a(date, 3, i);
    }

    public static Date addDays(Date date, int i) {
        return a(date, 5, i);
    }

    public static Date addHours(Date date, int i) {
        return a(date, 11, i);
    }

    public static Date addMinutes(Date date, int i) {
        return a(date, 12, i);
    }

    public static Date addSeconds(Date date, int i) {
        return a(date, 13, i);
    }

    public static Date addMilliseconds(Date date, int i) {
        return a(date, 14, i);
    }

    private static Date a(Date date, int i, int i2) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(i, i2);
        return calendar.getTime();
    }

    public static Date setYears(Date date, int i) {
        return b(date, 1, i);
    }

    public static Date setMonths(Date date, int i) {
        return b(date, 2, i);
    }

    public static Date setDays(Date date, int i) {
        return b(date, 5, i);
    }

    public static Date setHours(Date date, int i) {
        return b(date, 11, i);
    }

    public static Date setMinutes(Date date, int i) {
        return b(date, 12, i);
    }

    public static Date setSeconds(Date date, int i) {
        return b(date, 13, i);
    }

    public static Date setMilliseconds(Date date, int i) {
        return b(date, 14, i);
    }

    private static Date b(Date date, int i, int i2) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setLenient(false);
        calendar.setTime(date);
        calendar.set(i, i2);
        return calendar.getTime();
    }

    public static Calendar toCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Date round(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        a(calendar, i, 1);
        return calendar.getTime();
    }

    public static Calendar round(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        a(calendar2, i, 1);
        return calendar2;
    }

    public static Date round(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return round((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return round((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not round " + obj);
    }

    public static Date truncate(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        a(calendar, i, 0);
        return calendar.getTime();
    }

    public static Calendar truncate(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        a(calendar2, i, 0);
        return calendar2;
    }

    public static Date truncate(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return truncate((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return truncate((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not truncate " + obj);
    }

    public static Date ceiling(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        a(calendar, i, 2);
        return calendar.getTime();
    }

    public static Calendar ceiling(Calendar calendar, int i) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar2 = (Calendar) calendar.clone();
        a(calendar2, i, 2);
        return calendar2;
    }

    public static Date ceiling(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return ceiling((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return ceiling((Calendar) obj, i).getTime();
        }
        throw new ClassCastException("Could not find ceiling of for type: " + obj.getClass());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.util.Calendar r11, int r12, int r13) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DateUtils.a(java.util.Calendar, int, int):void");
    }

    public static Iterator<Calendar> iterator(Date date, int i) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return iterator(calendar, i);
    }

    public static Iterator<Calendar> iterator(Calendar calendar, int i) {
        Calendar calendarTruncate;
        Calendar calendarTruncate2;
        int i2;
        int i3 = 2;
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                calendarTruncate = truncate(calendar, 5);
                calendarTruncate2 = truncate(calendar, 5);
                switch (i) {
                    case 1:
                        i2 = 7;
                        i3 = 1;
                        break;
                    case 2:
                        i2 = 1;
                        break;
                    case 3:
                        i3 = calendar.get(7);
                        i2 = i3 - 1;
                        break;
                    case 4:
                        i3 = calendar.get(7) - 3;
                        i2 = calendar.get(7) + 3;
                        break;
                    default:
                        i2 = 7;
                        i3 = 1;
                        break;
                }
                break;
            case 5:
            case 6:
                Calendar calendarTruncate3 = truncate(calendar, 2);
                Calendar calendar2 = (Calendar) calendarTruncate3.clone();
                calendar2.add(2, 1);
                calendar2.add(5, -1);
                if (i != 6) {
                    i3 = 1;
                    calendarTruncate = calendarTruncate3;
                    calendarTruncate2 = calendar2;
                    i2 = 7;
                } else {
                    calendarTruncate = calendarTruncate3;
                    calendarTruncate2 = calendar2;
                    i2 = 1;
                }
                break;
            default:
                throw new IllegalArgumentException("The range style " + i + " is not valid.");
        }
        if (i3 < 1) {
            i3 += 7;
        }
        if (i3 > 7) {
            i3 -= 7;
        }
        if (i2 < 1) {
            i2 += 7;
        }
        if (i2 > 7) {
            i2 -= 7;
        }
        while (calendarTruncate.get(7) != i3) {
            calendarTruncate.add(5, -1);
        }
        while (calendarTruncate2.get(7) != i2) {
            calendarTruncate2.add(5, 1);
        }
        return new a(calendarTruncate, calendarTruncate2);
    }

    public static Iterator<?> iterator(Object obj, int i) {
        if (obj == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        if (obj instanceof Date) {
            return iterator((Date) obj, i);
        }
        if (obj instanceof Calendar) {
            return iterator((Calendar) obj, i);
        }
        throw new ClassCastException("Could not iterate based on " + obj);
    }

    public static long getFragmentInMilliseconds(Date date, int i) {
        return c(date, i, 14);
    }

    public static long getFragmentInSeconds(Date date, int i) {
        return c(date, i, 13);
    }

    public static long getFragmentInMinutes(Date date, int i) {
        return c(date, i, 12);
    }

    public static long getFragmentInHours(Date date, int i) {
        return c(date, i, 11);
    }

    public static long getFragmentInDays(Date date, int i) {
        return c(date, i, 6);
    }

    public static long getFragmentInMilliseconds(Calendar calendar, int i) {
        return b(calendar, i, 14);
    }

    public static long getFragmentInSeconds(Calendar calendar, int i) {
        return b(calendar, i, 13);
    }

    public static long getFragmentInMinutes(Calendar calendar, int i) {
        return b(calendar, i, 12);
    }

    public static long getFragmentInHours(Calendar calendar, int i) {
        return b(calendar, i, 11);
    }

    public static long getFragmentInDays(Calendar calendar, int i) {
        return b(calendar, i, 6);
    }

    private static long c(Date date, int i, int i2) {
        if (date == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return b(calendar, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static long b(Calendar calendar, int i, int i2) {
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        long jA = a(i2);
        long j = 0;
        switch (i) {
            case 1:
                j = 0 + ((((long) calendar.get(6)) * MILLIS_PER_DAY) / jA);
                break;
            case 2:
                j = 0 + ((((long) calendar.get(5)) * MILLIS_PER_DAY) / jA);
                break;
        }
        switch (i) {
            case 1:
            case 2:
            case 5:
            case 6:
                j += (((long) calendar.get(11)) * MILLIS_PER_HOUR) / jA;
                j += (((long) calendar.get(12)) * MILLIS_PER_MINUTE) / jA;
                j += (((long) calendar.get(13)) * 1000) / jA;
                return j + (((long) (calendar.get(14) * 1)) / jA);
            case 3:
            case 4:
            case 7:
            case 8:
            case 9:
            case 10:
            default:
                throw new IllegalArgumentException("The fragment " + i + " is not supported");
            case 11:
                j += (((long) calendar.get(12)) * MILLIS_PER_MINUTE) / jA;
                j += (((long) calendar.get(13)) * 1000) / jA;
                return j + (((long) (calendar.get(14) * 1)) / jA);
            case 12:
                j += (((long) calendar.get(13)) * 1000) / jA;
                return j + (((long) (calendar.get(14) * 1)) / jA);
            case 13:
                return j + (((long) (calendar.get(14) * 1)) / jA);
            case 14:
                return j;
        }
    }

    public static boolean truncatedEquals(Calendar calendar, Calendar calendar2, int i) {
        return truncatedCompareTo(calendar, calendar2, i) == 0;
    }

    public static boolean truncatedEquals(Date date, Date date2, int i) {
        return truncatedCompareTo(date, date2, i) == 0;
    }

    public static int truncatedCompareTo(Calendar calendar, Calendar calendar2, int i) {
        return truncate(calendar, i).compareTo(truncate(calendar2, i));
    }

    public static int truncatedCompareTo(Date date, Date date2, int i) {
        return truncate(date, i).compareTo(truncate(date2, i));
    }

    private static long a(int i) {
        switch (i) {
            case 5:
            case 6:
                return MILLIS_PER_DAY;
            case 7:
            case 8:
            case 9:
            case 10:
            default:
                throw new IllegalArgumentException("The unit " + i + " cannot be represented is milleseconds");
            case 11:
                return MILLIS_PER_HOUR;
            case 12:
                return MILLIS_PER_MINUTE;
            case 13:
                return 1000L;
            case 14:
                return 1L;
        }
    }

    static class a implements Iterator<Calendar> {
        private final Calendar a;
        private final Calendar b;

        a(Calendar calendar, Calendar calendar2) {
            this.a = calendar2;
            this.b = calendar;
            this.b.add(5, -1);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b.before(this.a);
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Calendar next() {
            if (this.b.equals(this.a)) {
                throw new NoSuchElementException();
            }
            this.b.add(5, 1);
            return (Calendar) this.b.clone();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
