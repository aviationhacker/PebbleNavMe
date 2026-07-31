.class public abstract Lorg/eclipse/jetty/io/AbstractBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer;


# static fields
.field protected static final __IMMUTABLE:Ljava/lang/String; = "IMMUTABLE"

.field protected static final __READONLY:Ljava/lang/String; = "READONLY"

.field protected static final __READWRITE:Ljava/lang/String; = "READWRITE"

.field protected static final __VOLATILE:Ljava/lang/String; = "VOLATILE"

.field static final synthetic a:Z

.field private static final b:Lorg/eclipse/jetty/util/log/Logger;

.field private static final c:Z


# instance fields
.field protected _access:I

.field protected _get:I

.field protected _hash:I

.field protected _hashGet:I

.field protected _hashPut:I

.field protected _mark:I

.field protected _put:I

.field protected _string:Ljava/lang/String;

.field protected _view:Lorg/eclipse/jetty/io/View;

.field protected _volatile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->a:Z

    .line 36
    const-class v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/AbstractBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    .line 38
    const-string v0, "org.eclipse.jetty.io.AbstractBuffer.boundsChecking"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/io/AbstractBuffer;->c:Z

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IMMUTABLE && VOLATILE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 68
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    .line 69
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_volatile:Z

    .line 70
    return-void
.end method


# virtual methods
.method public asArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    goto :goto_0
.end method

.method public asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-object p0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v4

    iget v5, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public asNonVolatileBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asReadOnlyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public buffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 0

    .prologue
    .line 133
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 139
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 140
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 141
    return-void
.end method

.method public compact()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    .line 147
    :goto_0
    if-lez v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v2

    sub-int/2addr v2, v0

    .line 151
    if-lez v2, :cond_1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 160
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 162
    :cond_3
    return-void

    .line 146
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    goto :goto_0

    .line 156
    :cond_5
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    goto :goto_1
.end method

.method public duplicate(I)Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 89
    instance-of v1, p0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    .line 92
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 196
    :goto_0
    return v0

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 172
    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 174
    instance-of v3, p0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-eqz v3, :cond_4

    .line 175
    :cond_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    goto :goto_0

    .line 178
    :cond_4
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 181
    :cond_5
    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_6

    instance-of v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v3, :cond_6

    .line 183
    check-cast p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 184
    iget v3, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    iget v4, p1, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v4, :cond_6

    move v0, v2

    goto :goto_0

    .line 188
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 189
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    .line 190
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_8

    .line 192
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v7

    .line 193
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v5

    .line 194
    if-eq v7, v5, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v5, v3

    move v3, v4

    .line 195
    goto :goto_1

    :cond_8
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/4 v2, 0x0

    .line 201
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 208
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/eclipse/jetty/io/AbstractBuffer;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 210
    check-cast v0, Lorg/eclipse/jetty/io/AbstractBuffer;

    .line 211
    iget v3, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    iget v0, v0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 216
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    .line 218
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v7

    .line 219
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v8

    .line 220
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 222
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 224
    aget-byte v3, v7, v4

    .line 225
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v8, v5

    .line 226
    if-eq v3, v0, :cond_5

    .line 228
    if-gt v9, v3, :cond_3

    if-gt v3, v10, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 229
    :cond_3
    if-gt v9, v0, :cond_4

    if-gt v0, v10, :cond_4

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 230
    :cond_4
    if-eq v3, v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v4

    .line 232
    goto :goto_1

    .line 236
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 238
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v3

    .line 239
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 240
    if-eq v3, v0, :cond_9

    .line 242
    if-gt v9, v3, :cond_7

    if-gt v3, v10, :cond_7

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 243
    :cond_7
    if-gt v9, v0, :cond_8

    if-gt v0, v10, :cond_8

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 244
    :cond_8
    if-eq v3, v0, :cond_9

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v4

    .line 246
    goto :goto_2

    :cond_a
    move v0, v1

    .line 248
    goto/16 :goto_0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public get([BII)I
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v1

    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v0

    .line 260
    if-nez v0, :cond_1

    .line 261
    const/4 v0, -0x1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    .line 266
    :cond_2
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    move-result v0

    .line 267
    if-lez v0, :cond_0

    .line 268
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    goto :goto_0
.end method

.method public get(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 275
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 276
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 277
    return-object v1
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    return v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 293
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashGet:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashPut:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    if-eq v0, v1, :cond_6

    .line 295
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    .line 296
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v3

    .line 297
    if-nez v3, :cond_2

    .line 299
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 301
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    .line 302
    if-gt v5, v0, :cond_1

    if-gt v0, v6, :cond_1

    .line 303
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 304
    :cond_1
    iget v3, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    move v0, v1

    .line 305
    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 311
    aget-byte v0, v3, v1

    .line 312
    if-gt v5, v0, :cond_3

    if-gt v0, v6, :cond_3

    .line 313
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 314
    :cond_3
    iget v4, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v0, v4

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    move v0, v1

    .line 315
    goto :goto_1

    .line 317
    :cond_4
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    if-nez v0, :cond_5

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 319
    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashGet:I

    .line 320
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hashPut:I

    .line 323
    :cond_6
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 333
    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_access:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_volatile:Z

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 343
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 349
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 354
    return-void
.end method

.method public markIndex()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_mark:I

    return v0
.end method

.method public peek()B
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 368
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lorg/eclipse/jetty/io/View;

    add-int v4, p1, p2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    .line 381
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    return-object v0

    .line 370
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/View;->setMarkIndex(I)V

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View;->setPutIndex(I)V

    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_view:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    goto :goto_1
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 386
    iput v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 394
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 395
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 404
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 405
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v6

    .line 406
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 407
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-static {v5, v1, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :cond_1
    return v0

    .line 408
    :cond_2
    if-eqz v5, :cond_3

    .line 410
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 411
    :goto_0
    if-ge v1, v0, :cond_1

    .line 412
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v5, v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0

    .line 414
    :cond_3
    if-eqz v6, :cond_4

    .line 416
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 417
    :goto_1
    if-ge v1, v0, :cond_1

    .line 418
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v6, p1

    .line 417
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_1

    .line 422
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 423
    :goto_2
    if-ge v1, v0, :cond_1

    .line 424
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_2
.end method

.method public poke(I[BII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 440
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 442
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v1

    sub-int p4, v1, p1

    .line 448
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 449
    if-eqz v1, :cond_2

    .line 450
    invoke-static {p2, p3, v1, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :cond_1
    return p4

    .line 454
    :cond_2
    :goto_0
    if-ge v0, p4, :cond_1

    .line 455
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget-byte v3, p2, p3

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    move p1, v2

    goto :goto_0
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 463
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 464
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 465
    return v1
.end method

.method public put([B)I
    .locals 3

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 486
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(I[BII)I

    move-result v1

    .line 487
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 488
    return v1
.end method

.method public put([BII)I
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 478
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(I[BII)I

    move-result v1

    .line 479
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 480
    return v1
.end method

.method public put(B)V
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 471
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(IB)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setPutIndex(I)V

    .line 473
    return-void
.end method

.method public final putIndex()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 6

    .prologue
    const/16 v0, 0x400

    const/4 v2, 0x0

    .line 700
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v3

    .line 701
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->space()I

    move-result v1

    .line 702
    if-le v1, p2, :cond_0

    move v1, p2

    .line 705
    :cond_0
    if-eqz v3, :cond_2

    .line 707
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    invoke-virtual {p1, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 708
    if-lez v0, :cond_1

    .line 709
    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    .line 725
    :cond_1
    :goto_0
    return v0

    .line 714
    :cond_2
    if-le v1, v0, :cond_3

    :goto_1
    new-array v0, v0, [B

    .line 716
    :goto_2
    if-lez v1, :cond_6

    .line 718
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 719
    if-gez v3, :cond_4

    .line 720
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 714
    goto :goto_1

    .line 721
    :cond_4
    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jetty/io/AbstractBuffer;->put([BII)I

    move-result v4

    .line 722
    sget-boolean v5, Lorg/eclipse/jetty/io/AbstractBuffer;->a:Z

    if-nez v5, :cond_5

    if-eq v3, v4, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 723
    :cond_5
    sub-int/2addr v1, v3

    .line 724
    goto :goto_2

    :cond_6
    move v0, v2

    .line 725
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 499
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 504
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    .line 505
    return-void
.end method

.method public setGetIndex(I)V
    .locals 1

    .prologue
    .line 517
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 519
    return-void
.end method

.method public setMarkIndex(I)V
    .locals 0

    .prologue
    .line 527
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_mark:I

    .line 528
    return-void
.end method

.method public setPutIndex(I)V
    .locals 1

    .prologue
    .line 540
    iput p1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_hash:I

    .line 542
    return-void
.end method

.method public skip(I)I
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result p1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->setGetIndex(I)V

    .line 548
    return p1
.end method

.method public slice()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 564
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 565
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;->setMarkIndex(I)V

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v0, ",m="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    const-string v0, ",g="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    const-string v0, ",p="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string v0, ",c="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->capacity()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const-string v0, "]={"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 592
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->markIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 594
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v1

    .line 595
    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    const-string v0, "}{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_1
    const/4 v1, 0x0

    .line 600
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 602
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I)B

    move-result v2

    .line 603
    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 604
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_2

    .line 606
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v4, 0x14

    if-le v1, v4, :cond_2

    .line 608
    const-string v0, " ... "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->putIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    .line 600
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 613
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 627
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 636
    if-eqz v1, :cond_0

    .line 637
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 644
    :goto_0
    return-object v0

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 643
    sget-object v1, Lorg/eclipse/jetty/io/AbstractBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 644
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 654
    if-eqz v1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 661
    :goto_0
    return-object v0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    .line 660
    sget-object v1, Lorg/eclipse/jetty/io/AbstractBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 661
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    const/16 v0, 0x400

    const/4 v5, 0x0

    .line 675
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 677
    if-eqz v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 694
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->clear()V

    .line 695
    return-void

    .line 683
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->length()I

    move-result v1

    .line 684
    if-le v1, v0, :cond_2

    :goto_0
    new-array v3, v0, [B

    .line 685
    iget v0, p0, Lorg/eclipse/jetty/io/AbstractBuffer;->_get:I

    move v2, v0

    .line 686
    :goto_1
    if-lez v1, :cond_0

    .line 688
    array-length v0, v3

    if-le v1, v0, :cond_3

    array-length v0, v3

    :goto_2
    invoke-virtual {p0, v2, v3, v5, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;->peek(I[BII)I

    move-result v4

    .line 689
    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 690
    add-int v0, v2, v4

    .line 691
    sub-int/2addr v1, v4

    move v2, v0

    .line 692
    goto :goto_1

    :cond_2
    move v0, v1

    .line 684
    goto :goto_0

    :cond_3
    move v0, v1

    .line 688
    goto :goto_2
.end method
