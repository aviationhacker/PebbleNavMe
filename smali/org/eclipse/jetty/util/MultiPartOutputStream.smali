.class public Lorg/eclipse/jetty/util/MultiPartOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String;

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

.field private static final a:[B

.field private static final b:[B


# instance fields
.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->b:[B

    .line 38
    const-string v0, "multipart/mixed"

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    .line 39
    const-string v0, "multipart/x-mixed-replace"

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    return-void

    .line 35
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 36
    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x24

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->c:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->c:Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->d:[B

    .line 58
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    .line 78
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 79
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOut()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    if-eqz p1, :cond_1

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 105
    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->e:Z

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 119
    if-eqz p1, :cond_1

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    aget-object v2, p2, v0

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 125
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/eclipse/jetty/util/MultiPartOutputStream;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    return-void
.end method
