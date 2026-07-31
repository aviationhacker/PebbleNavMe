.class public Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field private d:Ljava/io/OutputStreamWriter;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->e:Z

    .line 48
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->e:Z

    .line 57
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 40
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->e:Z

    .line 63
    iput-object p1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->e:Z

    .line 65
    return-void
.end method

.method private a([CII)V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 214
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    .line 218
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write([CII)V

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    iget-object v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    .line 223
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->c:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    array-length v0, v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    .line 245
    return-void
.end method

.method public ensureSpareCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 253
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->e:Z

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    array-length v0, v0

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    .line 256
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    .line 259
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public getBuf()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    return-object v0
.end method

.method public getByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 265
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    new-array v0, v0, [B

    .line 266
    iget-object v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public resetWriter()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    .line 234
    return-void
.end method

.method public setLength(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    .line 95
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    return v0
.end method

.method public spareCapacity()I
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write(C)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 115
    if-ltz p1, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v1, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-array v0, v1, [C

    aput-char p1, v0, v2

    .line 120
    invoke-direct {p0, v0, v2, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 167
    if-nez p1, :cond_1

    .line 169
    const-string v1, "null"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;II)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 175
    :goto_1
    if-ge v0, v1, :cond_0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 178
    if-ltz v2, :cond_2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_2

    .line 179
    iget-object v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sub-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a([CII)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 194
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 196
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 197
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 198
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    add-int v2, p2, v0

    sub-int v0, p3, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a([CII)V

    .line 205
    :cond_1
    return-void
.end method

.method public write([C)V
    .locals 5

    .prologue
    .line 129
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 130
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 132
    aget-char v1, p1, v0

    .line 133
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a([CII)V

    .line 141
    :cond_1
    return-void
.end method

.method public write([CII)V
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->ensureSpareCapacity(I)V

    .line 149
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 151
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 152
    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 153
    iget-object v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    iget v3, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    add-int v1, p2, v0

    sub-int v0, p3, v0

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a([CII)V

    .line 160
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->b:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    return-void
.end method
