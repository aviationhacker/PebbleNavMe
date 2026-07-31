.class public Lorg/eclipse/jetty/util/IO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/IO$1;,
        Lorg/eclipse/jetty/util/IO$d;,
        Lorg/eclipse/jetty/util/IO$a;,
        Lorg/eclipse/jetty/util/IO$c;,
        Lorg/eclipse/jetty/util/IO$b;,
        Lorg/eclipse/jetty/util/IO$e;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final CRLF_BYTES:[B

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static b:Lorg/eclipse/jetty/util/IO$c;

.field public static bufferSize:I

.field private static c:Lorg/eclipse/jetty/util/IO$a;

.field private static d:Lorg/eclipse/jetty/util/IO$d;

.field private static e:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lorg/eclipse/jetty/util/IO;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/IO;->CRLF_BYTES:[B

    .line 55
    const/high16 v0, 0x10000

    sput v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 474
    new-instance v0, Lorg/eclipse/jetty/util/IO$c;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$c;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->b:Lorg/eclipse/jetty/util/IO$c;

    .line 487
    new-instance v0, Lorg/eclipse/jetty/util/IO$a;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$a;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->c:Lorg/eclipse/jetty/util/IO$a;

    .line 526
    new-instance v0, Lorg/eclipse/jetty/util/IO$d;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/IO$d;-><init>(Lorg/eclipse/jetty/util/IO$1;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->d:Lorg/eclipse/jetty/util/IO$d;

    .line 527
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/eclipse/jetty/util/IO;->d:Lorg/eclipse/jetty/util/IO$d;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/eclipse/jetty/util/IO;->e:Ljava/io/PrintWriter;

    return-void

    .line 52
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 370
    if-eqz p0, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 432
    if-eqz p0, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 437
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 388
    if-eqz p0, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 392
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static close(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 405
    if-eqz p0, :cond_0

    .line 406
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 409
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/IO;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 144
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 181
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v1, v0, [B

    .line 182
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 184
    cmp-long v0, p2, v6

    if-ltz v0, :cond_4

    .line 186
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    .line 188
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    long-to-int v0, p2

    .line 189
    :goto_1
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 191
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 208
    :cond_0
    :goto_2
    return-void

    .line 188
    :cond_1
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    goto :goto_1

    .line 194
    :cond_2
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 195
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    :cond_4
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 203
    if-gez v0, :cond_3

    goto :goto_2
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 170
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 171
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 218
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    new-array v1, v0, [C

    .line 219
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    .line 221
    cmp-long v0, p2, v6

    if-ltz v0, :cond_3

    .line 223
    :goto_0
    cmp-long v0, p2, v6

    if-lez v0, :cond_0

    .line 225
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    .line 226
    long-to-int v0, p2

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 230
    :goto_1
    if-ne v0, v5, :cond_2

    .line 258
    :cond_0
    :goto_2
    return-void

    .line 228
    :cond_1
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto :goto_1

    .line 233
    :cond_2
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 234
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 237
    :cond_3
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 239
    check-cast v0, Ljava/io/PrintWriter;

    .line 240
    :goto_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    sget v2, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 243
    if-eq v2, v5, :cond_0

    .line 245
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_3

    .line 255
    :cond_4
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/Writer;->write([CII)V

    .line 252
    :cond_5
    sget v0, Lorg/eclipse/jetty/util/IO;->bufferSize:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 253
    if-ne v0, v5, :cond_4

    goto :goto_2
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_4

    .line 288
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 290
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 291
    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_3
    aget-object v3, v1, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 296
    :cond_4
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 302
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 303
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 304
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 305
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 306
    return-void
.end method

.method public static copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/IO$b;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/IO$b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 128
    sget-object v1, Lorg/eclipse/jetty/util/IO$e;->a:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IO$b;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copyThread(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/util/IO$b;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/IO$b;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 155
    sget-object v1, Lorg/eclipse/jetty/util/IO$e;->a:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IO$b;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lorg/eclipse/jetty/util/IO;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 354
    :goto_1
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 355
    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->delete(Ljava/io/File;)Z

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static getClosedStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lorg/eclipse/jetty/util/IO;->c:Lorg/eclipse/jetty/util/IO$a;

    return-object v0
.end method

.method public static getNullPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lorg/eclipse/jetty/util/IO;->e:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getNullStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lorg/eclipse/jetty/util/IO;->b:Lorg/eclipse/jetty/util/IO$c;

    return-object v0
.end method

.method public static getNullWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lorg/eclipse/jetty/util/IO;->d:Lorg/eclipse/jetty/util/IO$d;

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 419
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 324
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 326
    :goto_0
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 327
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 337
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 338
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
