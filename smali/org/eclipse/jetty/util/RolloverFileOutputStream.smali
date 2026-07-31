.class public Lorg/eclipse/jetty/util/RolloverFileOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;,
        Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Timer;


# instance fields
.field private b:Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/File;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x1f

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZI)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    if-nez p5, :cond_0

    .line 144
    const-string p5, "yyyy_MM_dd"

    .line 145
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->d:Ljava/text/SimpleDateFormat;

    .line 147
    if-nez p6, :cond_1

    .line 148
    const-string p6, "HHmmssSSS"

    .line 149
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->c:Ljava/text/SimpleDateFormat;

    .line 151
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 154
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 160
    :cond_2
    if-nez p1, :cond_3

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid filename"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    .line 164
    iput-boolean p2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->g:Z

    .line 165
    iput p3, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->h:I

    .line 166
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a()V

    .line 168
    const-class v6, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    monitor-enter v6

    .line 170
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 171
    new-instance v0, Ljava/util/Timer;

    const-class v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a:Ljava/util/Timer;

    .line 173
    :cond_4
    new-instance v0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;-><init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->b:Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 176
    invoke-virtual {v3, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 178
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 183
    invoke-virtual {v0, p4}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 184
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 185
    sget-object v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a:Ljava/util/Timer;

    iget-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->b:Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v1, v2, v0, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 186
    monitor-exit v6

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 7

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write log directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 225
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy_mm_dd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 226
    if-ltz v4, :cond_2

    .line 228
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy_mm_dd"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot write log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 241
    :cond_4
    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    .line 242
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->g:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 244
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 245
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->g:Z

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 246
    if-eqz v1, :cond_6

    .line 247
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_6
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a()V

    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 255
    iget v1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->h:I

    if-lez v1, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 262
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yyyy_mm_dd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 263
    if-gez v5, :cond_1

    .line 281
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 266
    const-string v7, "yyyy_mm_dd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 269
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 271
    aget-object v7, v5, v0

    .line 272
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_2

    .line 274
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 276
    sub-long v10, v2, v10

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    iget v7, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->h:I

    int-to-long v12, v7

    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->b()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 306
    const-class v1, Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    monitor-enter v1

    .line 308
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->b:Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;->cancel()Z

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 311
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    .line 312
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    throw v0

    .line 316
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public getDatedFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRetainDays()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->h:I

    return v0
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 289
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 297
    return-void
.end method
