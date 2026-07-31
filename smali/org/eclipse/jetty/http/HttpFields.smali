.class public Lorg/eclipse/jetty/http/HttpFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpFields$Field;,
        Lorg/eclipse/jetty/http/HttpFields$b;,
        Lorg/eclipse/jetty/http/HttpFields$a;
    }
.end annotation


# static fields
.field public static final __01Jan1970:Ljava/lang/String;

.field public static final __01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final __01Jan1970_COOKIE:Ljava/lang/String;

.field public static final __COOKIE_DELIM:Ljava/lang/String; = "\"\\\n\r\t\u000c\u0008%+ ;="

.field public static final __GMT:Ljava/util/TimeZone;

.field public static final __dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

.field public static final __separators:Ljava/lang/String; = ", \t"

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$b;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static final k:Ljava/lang/Float;

.field private static final l:Ljava/lang/Float;

.field private static final m:Lorg/eclipse/jetty/util/StringMap;


# instance fields
.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const-class v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 70
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    .line 71
    new-instance v0, Lorg/eclipse/jetty/io/BufferDateCache;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferDateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferDateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sat"

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->b:[Ljava/lang/String;

    .line 86
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Jan"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->c:[Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->d:Ljava/lang/ThreadLocal;

    .line 217
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEE, dd-MMM-yy HH:mm:ss"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss"

    aput-object v1, v0, v6

    const-string v1, "EEE dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE dd MMM yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE MMM dd yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE MMM dd yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE MMM-dd-yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dd MMM yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dd-MMM-yy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MMM dd HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EEE MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EEE, MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EEE, MMM dd HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EEE dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EEE dd-MMM-yy HH:mm:ss"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->e:[Ljava/lang/String;

    .line 286
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->f:Ljava/lang/ThreadLocal;

    .line 296
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    .line 297
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 298
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 314
    const-string v0, "org.eclipse.jetty.http.HttpFields.CACHE"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/http/HttpFields;->j:I

    .line 1173
    new-instance v0, Ljava/lang/Float;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    .line 1174
    new-instance v0, Ljava/lang/Float;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    .line 1175
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    .line 1178
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const/4 v1, 0x0

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.9"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.9"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.8"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.8"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.7"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.7"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.66"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.66"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.6"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.6"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.5"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.5"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.4"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.4"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.33"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.33"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.3"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.3"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.2"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.2"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.1"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.1"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    .line 310
    return-void
.end method

.method private a(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 320
    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v0, "ISO-8859-1"

    invoke-direct {v1, p1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget v0, Lorg/eclipse/jetty/http/HttpFields;->j:I

    if-lez v0, :cond_3

    .line 329
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    sget v2, Lorg/eclipse/jetty/http/HttpFields;->j:I

    if-le v0, v2, :cond_2

    .line 330
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 331
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    if-nez v0, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->e:[Ljava/lang/String;

    return-object v0
.end method

.method public static formatCookieDate(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCookieDate(Ljava/lang/StringBuilder;J)V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$a;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$a;->a(Ljava/lang/StringBuilder;J)V

    .line 203
    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$a;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields$a;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuality(Ljava/lang/String;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 1199
    if-nez p0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    .line 1226
    :goto_0
    return-object v0

    .line 1201
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1202
    add-int/lit8 v1, v0, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_2

    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    goto :goto_0

    .line 1204
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_3

    .line 1206
    add-int/lit8 v0, v0, 0x1

    .line 1207
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, p0, v0, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    .line 1211
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1212
    invoke-static {p0, v0}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1213
    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1214
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->m:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1215
    if-nez v1, :cond_4

    .line 1219
    :try_start_0
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v0, v1

    .line 1226
    goto :goto_0

    .line 1221
    :catch_0
    move-exception v0

    .line 1223
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->k:Ljava/lang/Float;

    goto :goto_1
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$b;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/http/HttpFields$b;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static qualityList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 1238
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1280
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 1244
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1246
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1247
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpFields;->getQuality(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 1249
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 1251
    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1252
    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1256
    :cond_3
    invoke-static {v1, v8}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    .line 1257
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 1259
    :cond_4
    invoke-static {v0, v8}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v4

    .line 1262
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    .line 1263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_6

    .line 1265
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1266
    invoke-virtual {v3, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v3

    if-lez v3, :cond_5

    .line 1268
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1269
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1270
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1271
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1272
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->l:Ljava/lang/Float;

    .line 1274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v2

    .line 1275
    goto :goto_2

    :cond_5
    move-object v3, v0

    move v0, v2

    .line 1278
    goto :goto_2

    .line 1279
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->clear()V

    move-object v0, v1

    .line 1280
    goto/16 :goto_0
.end method

.method public static valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1149
    if-nez p0, :cond_0

    .line 1169
    :goto_0
    return-object v1

    .line 1151
    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1152
    if-gez v2, :cond_1

    move-object v1, p0

    goto :goto_0

    .line 1153
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1155
    :cond_2
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v6, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1156
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1159
    new-instance v4, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v5, "= "

    invoke-direct {v4, v0, v5}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1164
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1165
    :goto_2
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1169
    :cond_4
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 699
    if-nez p2, :cond_0

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 702
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 703
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public add(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 4

    .prologue
    .line 1120
    if-nez p1, :cond_1

    .line 1130
    :cond_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 1123
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1126
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 1127
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1128
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 718
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 722
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 724
    instance-of v0, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpHeaderValues;->hasKnownValues(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 726
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    move-object v2, v0

    move-object v0, v1

    .line 730
    :goto_0
    if-eqz v2, :cond_3

    .line 733
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 737
    :cond_3
    new-instance v2, Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-direct {v2, v3, v4, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 738
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    if-eqz v0, :cond_4

    .line 742
    invoke-static {v0, v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->a(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 745
    :goto_1
    return-void

    .line 744
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addDateField(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 917
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 918
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 919
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 921
    return-void
.end method

.method public addLongField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 863
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 864
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 865
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 866
    return-void
.end method

.method public addLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 2

    .prologue
    .line 877
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 878
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 879
    return-void
.end method

.method public addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V
    .locals 13

    .prologue
    .line 967
    const-string v4, "\"\\\n\r\t\u000c\u0008%+ ;="

    .line 970
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 971
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad cookie name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 974
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    invoke-static {v7, p1, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 977
    const/16 v2, 0x3d

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 979
    const/4 v2, 0x0

    .line 980
    const/4 v3, 0x0

    .line 982
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 983
    invoke-static {v7, p2, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 985
    :cond_2
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 987
    const-string v5, ";Comment="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    move-object/from16 v0, p7

    invoke-static {v7, v0, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 991
    :cond_3
    if-eqz p4, :cond_e

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    .line 993
    const/4 v3, 0x1

    .line 994
    const-string v5, ";Path="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 996
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v3

    .line 1000
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1002
    const/4 v2, 0x1

    .line 1003
    const-string v3, ";Domain="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    move v5, v2

    .line 1007
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_5

    .line 1010
    const-string v2, ";Expires="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_f

    .line 1012
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :goto_1
    if-lez p10, :cond_5

    .line 1018
    const-string v2, ";Max-Age="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1023
    :cond_5
    if-eqz p8, :cond_6

    .line 1024
    const-string v2, ";Secure"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_6
    if-eqz p9, :cond_7

    .line 1026
    const-string v2, ";HttpOnly"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1031
    const-string v2, "Set-Cookie"

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v4

    .line 1032
    const/4 v2, 0x0

    move-object v3, v2

    .line 1033
    :goto_2
    if-eqz v4, :cond_c

    .line 1035
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->b(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    .line 1036
    :goto_3
    if-eqz v2, :cond_12

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1039
    if-nez v5, :cond_8

    const-string v9, "Domain"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    if-eqz v5, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Domain="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_9
    if-nez v6, :cond_a

    const-string v9, "Path"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    if-eqz v6, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1042
    :cond_b
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1043
    if-nez v3, :cond_11

    .line 1044
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    :cond_c
    :goto_4
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v3, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v3, v7}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1057
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->EXPIRES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1058
    return-void

    .line 998
    :cond_d
    move-object/from16 v0, p4

    invoke-static {v7, v0, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    move v6, v3

    goto/16 :goto_0

    .line 1014
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p5

    add-long/2addr v2, v10

    invoke-static {v7, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    goto/16 :goto_1

    .line 1035
    :cond_10
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->b(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1046
    :cond_11
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->a(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    goto :goto_4

    .line 1051
    :cond_12
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v2

    move-object v3, v4

    move-object v4, v2

    .line 1052
    goto/16 :goto_2
.end method

.method public addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 12

    .prologue
    .line 931
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getMaxAge()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isSecure()Z

    move-result v9

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isHttpOnly()Z

    move-result v10

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getVersion()I

    move-result v11

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 941
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1108
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1109
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->a(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->b(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getDateField(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 813
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 814
    if-nez v0, :cond_1

    move-wide v0, v2

    .line 824
    :cond_0
    :goto_0
    return-wide v0

    .line 817
    :cond_1
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->b(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 818
    if-nez v4, :cond_2

    move-wide v0, v2

    .line 819
    goto :goto_0

    .line 821
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$b;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/http/HttpFields$b;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 822
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method public getFieldNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields$3;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/http/HttpFields$3;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getFieldNamesCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->a(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_1
    return-object v1
.end method

.method public getLongField(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 787
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongField(Lorg/eclipse/jetty/io/Buffer;)J
    .locals 2

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->a(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 801
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 432
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->a(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    .line 493
    if-nez v1, :cond_0

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$4;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/http/HttpFields$4;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 566
    if-nez v1, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$6;

    invoke-direct {v0, p0, v1, p2}, Lorg/eclipse/jetty/http/HttpFields$6;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->a(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    .line 528
    if-nez v1, :cond_0

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 531
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$5;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/http/HttpFields$5;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    goto :goto_0
.end method

.method public getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->b(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    .line 470
    if-nez v1, :cond_1

    .line 471
    const/4 v0, 0x0

    .line 480
    :cond_0
    return-object v0

    .line 473
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :goto_0
    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 609
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 610
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 611
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 662
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 685
    :cond_1
    return-void

    .line 667
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 669
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_4

    .line 671
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 675
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 677
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 678
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 679
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 681
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 682
    if-eqz v2, :cond_3

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 673
    :cond_4
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 624
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 625
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 626
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 627
    return-void
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 639
    if-nez p2, :cond_0

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1

    .line 643
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 644
    :cond_1
    instance-of v0, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2

    .line 645
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 648
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 649
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putDateField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 904
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 905
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 906
    return-void
.end method

.method public putDateField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 2

    .prologue
    .line 890
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 891
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 893
    return-void
.end method

.method public putLongField(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 849
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 850
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 851
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 852
    return-void
.end method

.method public putLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 2

    .prologue
    .line 836
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 837
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 838
    return-void
.end method

.method public putTo(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 1063
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1065
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1066
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1063
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1069
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->putCRLF(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1070
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 755
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 756
    return-void
.end method

.method public remove(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 766
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_0

    .line 767
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 768
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 769
    :goto_0
    if-eqz v0, :cond_1

    .line 771
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1077
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1078
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1080
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1081
    if-eqz v0, :cond_2

    .line 1083
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1084
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1085
    :cond_0
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1086
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1091
    :cond_3
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1092
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1097
    :goto_1
    return-object v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1096
    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
