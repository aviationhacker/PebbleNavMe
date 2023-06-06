.class public Lorg/eclipse/jetty/io/ByteArrayBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
    }
.end annotation


# static fields
.field static final b:I


# instance fields
.field protected final _bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "org.eclipse.jetty.io.ByteArrayBuffer.MAX_WRITE"

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-array v0, p1, [B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 75
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 76
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    new-array v1, p1, [B

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 81
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 82
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 84
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 105
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 107
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 108
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 91
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 92
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 94
    if-eqz p2, :cond_0

    .line 96
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_string:Ljava/lang/String;

    .line 99
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 47
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 52
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 58
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 60
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 61
    return-void
.end method

.method public constructor <init>([BIIIZ)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 66
    iput-object p1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    .line 67
    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 69
    iput p4, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_access:I

    .line 70
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    return v0
.end method

.method public compact()V
    .locals 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v0

    .line 127
    :goto_0
    if-lez v0, :cond_3

    .line 129
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    .line 130
    if-lez v1, :cond_1

    .line 132
    iget-object v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setMarkIndex(I)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setGetIndex(I)V

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 138
    :cond_3
    return-void

    .line 126
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 177
    :goto_0
    return v0

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v0, :cond_3

    .line 151
    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 157
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v0, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v3, :cond_5

    instance-of v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v3, :cond_5

    .line 163
    check-cast p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 164
    iget v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v4, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v4, :cond_5

    move v0, v2

    .line 165
    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 170
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_7

    .line 173
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v7, v3, v4

    .line 174
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v5

    .line 175
    if-eq v7, v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v5, v3

    move v3, v4

    .line 176
    goto :goto_1

    :cond_7
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/4 v2, 0x0

    .line 184
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 230
    :goto_0
    return v0

    .line 188
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    .line 192
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 194
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 195
    iget v3, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    iget v0, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v6

    .line 200
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    .line 201
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v7

    .line 202
    if-nez v7, :cond_7

    .line 204
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 207
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 208
    if-eq v3, v0, :cond_6

    .line 210
    if-gt v8, v3, :cond_4

    if-gt v3, v9, :cond_4

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 211
    :cond_4
    if-gt v8, v0, :cond_5

    if-gt v0, v9, :cond_5

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 212
    :cond_5
    if-eq v3, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v4

    .line 214
    goto :goto_1

    .line 218
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_b

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v3, v0, v4

    .line 221
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v7, v5

    .line 222
    if-eq v3, v0, :cond_a

    .line 224
    if-gt v8, v3, :cond_8

    if-gt v3, v9, :cond_8

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 225
    :cond_8
    if-gt v8, v0, :cond_9

    if-gt v0, v9, :cond_9

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 226
    :cond_9
    if-eq v3, v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 228
    goto :goto_2

    :cond_b
    move v0, v1

    .line 230
    goto/16 :goto_0
.end method

.method public get()B
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 242
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    if-eq v0, v1, :cond_4

    .line 244
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    .line 245
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_2

    .line 247
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, v1

    .line 248
    const/16 v3, 0x61

    if-gt v3, v0, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 249
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 250
    :cond_1
    iget v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    move v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    if-nez v0, :cond_3

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 254
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_get:I

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashGet:I

    .line 255
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hashPut:I

    .line 257
    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    return v0
.end method

.method public peek(I)B
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public peek(I[BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 268
    .line 269
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 272
    if-nez v1, :cond_2

    .line 280
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 276
    :cond_2
    if-ltz v1, :cond_0

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v0, p1, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 280
    goto :goto_0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 300
    iput v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 309
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 310
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 319
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    .line 320
    if-eqz v2, :cond_2

    .line 321
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {v2, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    :cond_1
    return v0

    .line 324
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 325
    :goto_0
    if-ge v1, v0, :cond_1

    .line 326
    iget-object v5, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v5, p1

    .line 325
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0
.end method

.method public poke(I[BII)I
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_hash:I

    .line 344
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->capacity()I

    move-result v0

    sub-int p4, v0, p1

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    return p4
.end method

.method public poke(IB)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    aput-byte p2, v0, p1

    .line 295
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 384
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 385
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result p2

    .line 386
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    move v0, p2

    move v3, v1

    .line 389
    :cond_2
    if-ge v1, p2, :cond_6

    .line 391
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 392
    if-gez v3, :cond_4

    move v0, v1

    move v1, v3

    .line 404
    :goto_0
    if-gez v1, :cond_3

    if-nez v0, :cond_3

    .line 405
    const/4 v0, -0x1

    .line 406
    :cond_3
    return v0

    .line 394
    :cond_4
    if-lez v3, :cond_5

    .line 396
    add-int/2addr v2, v3

    .line 397
    add-int/2addr v1, v3

    .line 398
    sub-int/2addr v0, v3

    .line 399
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    .line 401
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-gtz v4, :cond_2

    move v0, v1

    move v1, v3

    .line 402
    goto :goto_0

    :cond_6
    move v0, v1

    move v1, v3

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v1

    .line 363
    sget v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->b:I

    if-lez v0, :cond_1

    sget v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->b:I

    if-le v1, v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v0

    move v2, v0

    .line 366
    :goto_0
    if-lez v1, :cond_2

    .line 368
    sget v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->b:I

    if-le v1, v0, :cond_0

    sget v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->b:I

    .line 369
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 370
    add-int/2addr v2, v0

    .line 371
    sub-int/2addr v1, v0

    .line 372
    goto :goto_0

    :cond_0
    move v0, v1

    .line 368
    goto :goto_1

    .line 375
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/ByteArrayBuffer;->_bytes:[B

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 376
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 378
    :cond_3
    return-void
.end method
