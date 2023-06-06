.class public Lorg/eclipse/jetty/util/B64Code;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[C

.field static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    const/4 v1, 0x0

    .line 38
    new-array v0, v4, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    .line 50
    new-array v0, v5, [B

    sput-object v0, Lorg/eclipse/jetty/util/B64Code;->b:[B

    move v0, v1

    .line 51
    :goto_0
    if-ge v0, v5, :cond_0

    .line 52
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 53
    :goto_1
    if-ge v0, v4, :cond_1

    .line 54
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->b:[B

    sget-object v3, Lorg/eclipse/jetty/util/B64Code;->a:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v0, v2, v3

    .line 53
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    .line 55
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->b:[B

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    .line 56
    return-void

    .line 38
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 371
    if-nez p0, :cond_1

    .line 415
    :cond_0
    return-void

    .line 374
    :cond_1
    if-nez p1, :cond_2

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No outputstream for decoded bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_2
    const/4 v0, 0x4

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 381
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 383
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 385
    const/16 v2, 0x3d

    if-eq v5, v2, :cond_0

    .line 388
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 389
    goto :goto_0

    .line 391
    :cond_3
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->b:[B

    aget-byte v2, v2, v5

    .line 392
    if-gez v2, :cond_4

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not B64 encoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_4
    add-int/lit8 v2, v0, 0x1

    sget-object v6, Lorg/eclipse/jetty/util/B64Code;->b:[B

    aget-byte v5, v6, v5

    aput-byte v5, v4, v0

    .line 397
    packed-switch v2, :pswitch_data_0

    move v0, v2

    :goto_1
    move v2, v3

    .line 413
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 400
    goto :goto_1

    .line 402
    :pswitch_1
    aget-byte v0, v4, v1

    shl-int/lit8 v0, v0, 0x2

    aget-byte v5, v4, v7

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v2

    .line 403
    goto :goto_1

    .line 405
    :pswitch_2
    aget-byte v0, v4, v7

    shl-int/lit8 v0, v0, 0x4

    aget-byte v5, v4, v8

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v2

    .line 406
    goto :goto_1

    .line 408
    :pswitch_3
    aget-byte v0, v4, v8

    shl-int/lit8 v0, v0, 0x6

    const/4 v2, 0x3

    aget-byte v2, v4, v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    .line 409
    goto :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 355
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 356
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static decode([C)[B
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 267
    if-nez p0, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    array-length v0, p0

    .line 271
    rem-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input block size is not 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 275
    :goto_1
    if-ltz v0, :cond_3

    aget-char v2, p0, v0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3

    .line 276
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 278
    :cond_3
    if-gez v0, :cond_4

    .line 279
    new-array v0, v1, [B

    goto :goto_0

    .line 282
    :cond_4
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    .line 283
    new-array v0, v3, [B

    .line 286
    div-int/lit8 v2, v3, 0x3

    mul-int/lit8 v5, v2, 0x3

    move v4, v1

    .line 290
    :goto_2
    if-ge v4, v5, :cond_7

    .line 292
    :try_start_0
    sget-object v6, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_1
    aget-char v1, p0, v1

    aget-byte v6, v6, v1

    .line 293
    sget-object v7, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aget-char v2, p0, v2

    aget-byte v7, v7, v2

    .line 294
    sget-object v8, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_3
    aget-char v1, p0, v1

    aget-byte v8, v8, v1

    .line 295
    sget-object v9, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_4
    aget-char v2, p0, v2

    aget-byte v9, v9, v2

    .line 296
    if-ltz v6, :cond_5

    if-ltz v7, :cond_5

    if-ltz v8, :cond_5

    if-gez v9, :cond_6

    .line 297
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 331
    :catch_0
    move-exception v0

    move v0, v1

    .line 333
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was not B64 encoded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_6
    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v10, v7, 0x4

    or-int/2addr v6, v10

    int-to-byte v6, v6

    :try_start_5
    aput-byte v6, v0, v4

    .line 300
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v6, v7, 0x4

    ushr-int/lit8 v7, v8, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 301
    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v6, v8, 0x6

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    move v4, v2

    goto :goto_2

    .line 304
    :cond_7
    if-eq v3, v4, :cond_0

    .line 306
    rem-int/lit8 v2, v3, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 319
    :pswitch_0
    sget-object v3, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    add-int/lit8 v2, v1, 0x1

    :try_start_6
    aget-char v1, p0, v1

    aget-byte v3, v3, v1

    .line 320
    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_7
    aget-char v2, p0, v2

    aget-byte v2, v5, v2

    .line 321
    if-ltz v3, :cond_8

    if-gez v2, :cond_b

    .line 322
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :pswitch_1
    sget-object v2, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v3, v1, 0x1

    :try_start_8
    aget-char v1, p0, v1

    aget-byte v5, v2, v1

    .line 310
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v2, v3, 0x1

    :try_start_9
    aget-char v3, p0, v3

    aget-byte v3, v1, v3

    .line 311
    sget-object v6, Lorg/eclipse/jetty/util/B64Code;->b:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v1, v2, 0x1

    :try_start_a
    aget-char v2, p0, v2

    aget-byte v2, v6, v2

    .line 312
    if-ltz v5, :cond_9

    if-ltz v3, :cond_9

    if-gez v2, :cond_a

    .line 313
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not B64 encoded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_a
    add-int/lit8 v6, v4, 0x1

    shl-int/lit8 v5, v5, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 315
    add-int/lit8 v4, v6, 0x1

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    goto/16 :goto_0

    .line 323
    :cond_b
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 331
    :catch_1
    move-exception v0

    move v0, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move v0, v3

    goto/16 :goto_3

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(ILjava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v1, -0x4000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v1, 0x3f00000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 424
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const v1, 0xfc000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 425
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit16 v1, p0, 0x3f00

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 426
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit16 v1, p0, 0xfc

    shr-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 427
    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit8 v1, p0, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 428
    const/16 v0, 0x3d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 429
    return-void
.end method

.method public static encode(JLjava/lang/Appendable;)V
    .locals 4

    .prologue
    .line 434
    const-wide/16 v0, -0x4

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 435
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v2, -0x4000000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 436
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v2, 0x3f00000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x14

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 437
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const v2, 0xfc000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xe

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 438
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit16 v2, v0, 0x3f00

    shr-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 439
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit16 v2, v0, 0xfc

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 441
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x4

    const/16 v2, 0x1c

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 443
    const v0, 0xfffffff

    long-to-int v1, p0

    and-int/2addr v0, v1

    .line 444
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v2, 0xfc00000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x16

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 445
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const/high16 v2, 0x3f0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 446
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    const v2, 0xfc00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 447
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit16 v2, v0, 0x3f0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 448
    sget-object v1, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 449
    return-void
.end method

.method public static encode([B)[C
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x3d

    .line 108
    if-nez p0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    array-length v3, p0

    .line 112
    add-int/lit8 v0, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 113
    new-array v0, v0, [C

    .line 117
    div-int/lit8 v2, v3, 0x3

    mul-int/lit8 v4, v2, 0x3

    move v2, v1

    .line 118
    :goto_1
    if-ge v1, v4, :cond_2

    .line 120
    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p0, v1

    .line 121
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    .line 122
    add-int/lit8 v1, v7, 0x1

    aget-byte v7, p0, v7

    .line 123
    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v10, v6, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    aput-char v9, v0, v2

    .line 124
    add-int/lit8 v2, v8, 0x1

    sget-object v9, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    ushr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v6, v10

    aget-char v6, v9, v6

    aput-char v6, v0, v8

    .line 125
    add-int/lit8 v6, v2, 0x1

    sget-object v8, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    aget-char v5, v8, v5

    aput-char v5, v0, v2

    .line 126
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit8 v7, v7, 0x3f

    aget-char v5, v5, v7

    aput-char v5, v0, v6

    goto :goto_1

    .line 129
    :cond_2
    if-eq v3, v1, :cond_0

    .line 131
    rem-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 144
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 145
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 146
    add-int/lit8 v1, v2, 0x1

    aput-char v11, v0, v2

    .line 147
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 134
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    .line 135
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    .line 136
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    .line 137
    add-int/lit8 v2, v4, 0x1

    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v1, v6

    aget-char v1, v5, v1

    aput-char v1, v0, v4

    .line 138
    add-int/lit8 v1, v2, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v4, v3

    aput-char v3, v0, v2

    .line 139
    add-int/lit8 v2, v1, 0x1

    aput-char v11, v0, v1

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encode([BZ)[C
    .locals 13

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 171
    :cond_0
    if-nez p1, :cond_1

    .line 172
    invoke-static {p0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    array-length v5, p0

    .line 175
    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 176
    div-int/lit8 v1, v0, 0x4c

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 177
    new-array v1, v0, [C

    .line 178
    const/4 v3, 0x0

    .line 179
    const/4 v2, 0x0

    .line 181
    div-int/lit8 v0, v5, 0x3

    mul-int/lit8 v6, v0, 0x3

    .line 182
    const/4 v0, 0x0

    move v12, v0

    move v0, v3

    move v3, v2

    move v2, v12

    .line 183
    :goto_1
    if-ge v3, v6, :cond_2

    .line 185
    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v3

    .line 186
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p0, v4

    .line 187
    add-int/lit8 v3, v8, 0x1

    aget-byte v8, p0, v8

    .line 188
    add-int/lit8 v9, v0, 0x1

    sget-object v10, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v11, v7, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v1, v0

    .line 189
    add-int/lit8 v0, v9, 0x1

    sget-object v10, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    ushr-int/lit8 v11, v4, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v7, v11

    aget-char v7, v10, v7

    aput-char v7, v1, v9

    .line 190
    add-int/lit8 v7, v0, 0x1

    sget-object v9, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    ushr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v4, v10

    aget-char v4, v9, v4

    aput-char v4, v1, v0

    .line 191
    add-int/lit8 v4, v7, 0x1

    sget-object v0, Lorg/eclipse/jetty/util/B64Code;->a:[C

    and-int/lit8 v8, v8, 0x3f

    aget-char v0, v0, v8

    aput-char v0, v1, v7

    .line 192
    add-int/lit8 v0, v2, 0x4

    .line 193
    rem-int/lit8 v2, v0, 0x4c

    if-nez v2, :cond_4

    .line 195
    add-int/lit8 v7, v4, 0x1

    const/16 v2, 0xd

    aput-char v2, v1, v4

    .line 196
    add-int/lit8 v2, v7, 0x1

    const/16 v4, 0xa

    aput-char v4, v1, v7

    move v12, v0

    move v0, v2

    move v2, v12

    goto :goto_1

    .line 200
    :cond_2
    if-eq v5, v3, :cond_3

    .line 202
    rem-int/lit8 v2, v5, 0x3

    packed-switch v2, :pswitch_data_0

    .line 226
    :cond_3
    :goto_2
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xd

    aput-char v3, v1, v0

    .line 227
    add-int/lit8 v0, v2, 0x1

    const/16 v0, 0xa

    aput-char v0, v1, v2

    move-object v0, v1

    .line 228
    goto/16 :goto_0

    .line 205
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    .line 206
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    .line 207
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v1, v0

    .line 208
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v3, v6

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    .line 209
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v4, v2

    aput-char v2, v1, v0

    .line 210
    add-int/lit8 v0, v3, 0x1

    const/16 v2, 0x3d

    aput-char v2, v1, v3

    goto :goto_2

    .line 214
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p0, v3

    .line 215
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    ushr-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 216
    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lorg/eclipse/jetty/util/B64Code;->a:[C

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 217
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3d

    aput-char v3, v1, v0

    .line 218
    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x3d

    aput-char v3, v1, v2

    goto :goto_2

    :cond_4
    move v2, v0

    move v0, v4

    goto/16 :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
