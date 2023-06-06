.class public final Lcom/google/common/io/LittleEndianDataInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    return-void
.end method

.method private a()B
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 225
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 226
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 229
    :cond_0
    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[B)V

    .line 67
    return-void
.end method

.method public readFully([BII)V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 72
    return-void
.end method

.method public readInt()I
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v0

    .line 117
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v1

    .line 118
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v2

    .line 119
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v3

    .line 121
    invoke-static {v3, v2, v1, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "readLine is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 8

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v7

    .line 135
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v6

    .line 136
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v5

    .line 137
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v4

    .line 138
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v3

    .line 139
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v2

    .line 140
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v1

    .line 141
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v0

    .line 143
    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 82
    if-gez v0, :cond_0

    .line 83
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 86
    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v0

    .line 101
    invoke-direct {p0}, Lcom/google/common/io/LittleEndianDataInputStream;->a()B

    move-result v1

    .line 103
    invoke-static {v2, v2, v1, v0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/common/io/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
