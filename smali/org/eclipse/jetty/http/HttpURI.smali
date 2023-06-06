.class public Lorg/eclipse/jetty/http/HttpURI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:[B


# instance fields
.field a:Z

.field b:[B

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Z

.field final o:Lorg/eclipse/jetty/util/Utf8StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 76
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 96
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 100
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpURI;->parse(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 91
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 92
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 78
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->a([BII)V

    .line 112
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 504
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BII)V
    .locals 9

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 208
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 210
    add-int v5, p2, p3

    .line 211
    const/4 v2, 0x0

    .line 213
    add-int v0, p2, p3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    .line 214
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    .line 215
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    .line 216
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    .line 217
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->h:I

    .line 219
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 220
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 221
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 222
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    move v1, p2

    move v0, p2

    .line 223
    :goto_0
    if-ge v0, v5, :cond_8

    .line 225
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 226
    add-int/lit8 v4, v0, 0x1

    .line 228
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v4

    .line 494
    goto :goto_0

    .line 233
    :pswitch_1
    sparse-switch v3, :sswitch_data_0

    .line 258
    const/4 v2, 0x2

    move v1, v0

    move v0, v4

    .line 261
    goto :goto_0

    .line 236
    :sswitch_0
    const/4 v2, 0x1

    move v1, v0

    move v0, v4

    .line 237
    goto :goto_0

    .line 239
    :sswitch_1
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 240
    const/16 v2, 0x8

    move v1, v0

    move v0, v4

    .line 241
    goto :goto_0

    .line 243
    :sswitch_2
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 244
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 245
    const/16 v2, 0x9

    move v1, v0

    move v0, v4

    .line 246
    goto :goto_0

    .line 248
    :sswitch_3
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 249
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 250
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    move v1, v0

    move v0, v4

    .line 251
    goto :goto_0

    .line 253
    :sswitch_4
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 254
    const/16 v2, 0xa

    move v1, v0

    move v0, v4

    .line 255
    goto :goto_0

    .line 266
    :pswitch_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x2f

    if-ne v3, v0, :cond_1

    .line 268
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    .line 269
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 270
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 271
    const/4 v2, 0x4

    move v0, v4

    goto :goto_0

    .line 273
    :cond_1
    const/16 v0, 0x3b

    if-eq v3, v0, :cond_2

    const/16 v0, 0x3f

    if-eq v3, v0, :cond_2

    const/16 v0, 0x23

    if-ne v3, v0, :cond_3

    .line 275
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 276
    const/4 v2, 0x7

    move v0, v4

    goto :goto_0

    .line 280
    :cond_3
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    .line 281
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 282
    const/4 v2, 0x7

    move v0, v4

    .line 284
    goto :goto_0

    .line 290
    :pswitch_3
    const/4 v6, 0x6

    if-le p3, v6, :cond_b

    const/16 v6, 0x74

    if-ne v3, v6, :cond_b

    .line 292
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v7, p2, 0x3

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_4

    .line 294
    add-int/lit8 v0, p2, 0x3

    .line 295
    add-int/lit8 v4, p2, 0x4

    .line 296
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    .line 312
    :goto_2
    sparse-switch v4, :sswitch_data_1

    :goto_3
    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    :goto_4
    move v8, v0

    move v0, v2

    move v2, v1

    move v1, v8

    .line 360
    goto/16 :goto_0

    .line 298
    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v7, p2, 0x4

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_5

    .line 300
    add-int/lit8 v0, p2, 0x4

    .line 301
    add-int/lit8 v4, p2, 0x5

    .line 302
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto :goto_2

    .line 304
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v7, p2, 0x5

    aget-byte v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_b

    .line 306
    add-int/lit8 v0, p2, 0x5

    .line 307
    add-int/lit8 v4, p2, 0x6

    .line 308
    const/16 v3, 0x3a

    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto :goto_2

    .line 316
    :sswitch_5
    add-int/lit8 v2, v0, 0x1

    .line 317
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    .line 318
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 319
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 320
    const/16 v3, 0x2f

    if-ne v1, v3, :cond_6

    .line 321
    const/4 v1, 0x1

    goto :goto_4

    .line 324
    :cond_6
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    .line 325
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 326
    const/4 v1, 0x7

    .line 328
    goto :goto_4

    .line 333
    :sswitch_6
    const/4 v2, 0x7

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 334
    goto :goto_4

    .line 339
    :sswitch_7
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 340
    const/16 v2, 0x8

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 341
    goto :goto_4

    .line 346
    :sswitch_8
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 347
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 348
    const/16 v2, 0x9

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    .line 349
    goto :goto_4

    .line 354
    :sswitch_9
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 355
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 356
    iput v3, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    goto :goto_3

    .line 365
    :pswitch_4
    sparse-switch v3, :sswitch_data_2

    :goto_5
    move v0, v4

    .line 393
    goto/16 :goto_0

    .line 371
    :sswitch_a
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 372
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 373
    const/4 v2, 0x7

    move v1, v0

    .line 374
    goto :goto_5

    .line 378
    :sswitch_b
    iput v4, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    goto :goto_5

    .line 383
    :sswitch_c
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 384
    const/4 v2, 0x6

    .line 385
    goto :goto_5

    .line 389
    :sswitch_d
    const/4 v2, 0x5

    goto :goto_5

    .line 398
    :pswitch_5
    sparse-switch v3, :sswitch_data_3

    :goto_6
    move v0, v4

    .line 411
    goto/16 :goto_0

    .line 402
    :sswitch_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No closing \']\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    sget-object v3, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v2, p2, p3, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :sswitch_f
    const/4 v2, 0x4

    goto :goto_6

    .line 416
    :pswitch_6
    const/16 v6, 0x2f

    if-ne v3, v6, :cond_a

    .line 419
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 420
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    if-gt v1, v2, :cond_7

    .line 421
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 422
    :cond_7
    const/4 v2, 0x7

    move v1, v0

    move v0, v4

    goto/16 :goto_0

    .line 429
    :pswitch_7
    sparse-switch v3, :sswitch_data_4

    :goto_7
    move v0, v4

    .line 456
    goto/16 :goto_0

    .line 433
    :sswitch_10
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 434
    const/16 v2, 0x8

    .line 435
    goto :goto_7

    .line 439
    :sswitch_11
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 440
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 441
    const/16 v2, 0x9

    .line 442
    goto :goto_7

    .line 446
    :sswitch_12
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 447
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 448
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    goto/16 :goto_1

    .line 453
    :sswitch_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    goto :goto_7

    .line 461
    :pswitch_8
    sparse-switch v3, :sswitch_data_5

    :goto_8
    move v0, v4

    .line 476
    goto/16 :goto_0

    .line 465
    :sswitch_14
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 466
    const/16 v2, 0x9

    .line 467
    goto :goto_8

    .line 471
    :sswitch_15
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 472
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    goto/16 :goto_1

    .line 481
    :pswitch_9
    const/16 v6, 0x23

    if-ne v3, v6, :cond_a

    .line 483
    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    goto/16 :goto_1

    .line 491
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only \'*\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_8
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    if-ge v0, v1, :cond_9

    .line 497
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->h:I

    .line 498
    :cond_9
    return-void

    :cond_a
    move v0, v4

    goto/16 :goto_0

    :cond_b
    move v8, v0

    move v0, v4

    move v4, v3

    move v3, v8

    goto/16 :goto_2

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2f -> :sswitch_0
        0x3b -> :sswitch_1
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 312
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_9
        0x2f -> :sswitch_6
        0x3a -> :sswitch_5
        0x3b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch

    .line 365
    :sswitch_data_2
    .sparse-switch
        0x2f -> :sswitch_a
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x5b -> :sswitch_d
    .end sparse-switch

    .line 398
    :sswitch_data_3
    .sparse-switch
        0x2f -> :sswitch_e
        0x5d -> :sswitch_f
    .end sparse-switch

    .line 429
    :sswitch_data_4
    .sparse-switch
        0x23 -> :sswitch_12
        0x25 -> :sswitch_13
        0x3b -> :sswitch_10
        0x3f -> :sswitch_11
    .end sparse-switch

    .line 461
    :sswitch_data_5
    .sparse-switch
        0x23 -> :sswitch_15
        0x3f -> :sswitch_14
    .end sparse-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 752
    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    iput v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    .line 753
    sget-object v0, Lorg/eclipse/jetty/http/HttpURI;->p:[B

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 754
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 755
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 756
    return-void
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4

    .prologue
    .line 732
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 735
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-static {v0, v1, v2, p1, v3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    goto :goto_0
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 741
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V

    goto :goto_0

    .line 747
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 3

    .prologue
    .line 531
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    if-ne v0, v1, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 692
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    if-ne v0, v1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 694
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 557
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 609
    :goto_0
    return-object v0

    .line 560
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int v2, v0, v1

    .line 561
    const/4 v1, 0x0

    .line 563
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    :goto_1
    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-ge v0, v3, :cond_7

    .line 565
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    aget-byte v3, v3, v0

    .line 567
    const/16 v4, 0x25

    if-ne v3, v4, :cond_6

    .line 569
    if-nez v1, :cond_1

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 572
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v5, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 573
    const/4 v1, 0x1

    .line 576
    :cond_1
    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-lt v3, v4, :cond_2

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad % encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x75

    if-ne v3, v4, :cond_5

    .line 580
    add-int/lit8 v3, v0, 0x5

    iget v4, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-lt v3, v4, :cond_3

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad %u encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 585
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    add-int/lit8 v0, v0, 0x5

    .line 563
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 588
    :catch_0
    move-exception v0

    .line 590
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 595
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 596
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    .line 597
    add-int/lit8 v0, v0, 0x2

    .line 599
    goto :goto_2

    .line 601
    :cond_6
    if-eqz v1, :cond_4

    .line 603
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_2

    .line 607
    :cond_7
    if-nez v1, :cond_8

    .line 608
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 609
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->o:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getDecodedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0x10

    const/4 v4, 0x0

    .line 614
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-ne v1, v2, :cond_0

    .line 674
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int v5, v1, v2

    .line 621
    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    move v3, v4

    :goto_1
    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-ge v1, v2, :cond_7

    .line 623
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    aget-byte v6, v2, v1

    .line 625
    const/16 v2, 0x25

    if-ne v6, v2, :cond_5

    .line 627
    if-nez v0, :cond_1

    .line 629
    new-array v0, v5, [B

    .line 630
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    invoke-static {v2, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_1
    add-int/lit8 v2, v1, 0x2

    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-lt v2, v6, :cond_2

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad % encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v2, v2, v6

    const/16 v6, 0x75

    if-ne v2, v6, :cond_4

    .line 637
    add-int/lit8 v2, v1, 0x5

    iget v6, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-lt v2, v6, :cond_3

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad %u encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x10

    invoke-static {v6, v7, v8, v9}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    .line 643
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 644
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    .line 646
    add-int/lit8 v1, v1, 0x5

    move v11, v1

    move v1, v2

    move-object v2, v0

    move v0, v11

    .line 621
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    move-object v0, v2

    goto/16 :goto_1

    .line 648
    :catch_0
    move-exception v0

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 655
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    add-int/lit8 v6, v1, 0x1

    const/4 v7, 0x2

    invoke-static {v2, v6, v7, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v6, v2

    .line 656
    add-int/lit8 v2, v3, 0x1

    aput-byte v6, v0, v3

    .line 657
    add-int/lit8 v1, v1, 0x2

    move v11, v1

    move v1, v2

    move-object v2, v0

    move v0, v11

    .line 659
    goto :goto_2

    .line 661
    :cond_5
    if-nez v0, :cond_6

    .line 663
    add-int/lit8 v2, v3, 0x1

    move v11, v1

    move v1, v2

    move-object v2, v0

    move v0, v11

    .line 664
    goto :goto_2

    .line 667
    :cond_6
    add-int/lit8 v2, v3, 0x1

    aput-byte v6, v0, v3

    move v11, v1

    move v1, v2

    move-object v2, v0

    move v0, v11

    goto :goto_2

    .line 671
    :cond_7
    if-nez v0, :cond_8

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 674
    :cond_8
    invoke-static {v0, v4, v3, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    if-ne v0, v1, :cond_0

    .line 726
    const/4 v0, 0x0

    .line 727
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    if-ne v0, v1, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    .line 700
    const/4 v0, 0x0

    .line 701
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    if-ne v0, v1, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 552
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    if-ne v0, v1, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 687
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->h:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 706
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 713
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 715
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 509
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    if-ne v0, v1, :cond_0

    .line 510
    const/4 v0, 0x0

    .line 526
    :goto_0
    return-object v0

    .line 511
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    sub-int/2addr v0, v1

    .line 512
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 517
    const-string v0, "http"

    goto :goto_0

    .line 518
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    .line 524
    const-string v0, "https"

    goto :goto_0

    .line 526
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 720
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/http/HttpURI;->a([BII)V

    .line 123
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public parse([BII)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpURI;->a([BII)V

    .line 130
    return-void
.end method

.method public parseConnect([BII)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpURI;->n:Z

    .line 137
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    .line 139
    add-int v4, p2, p3

    .line 141
    add-int v0, p2, p3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    .line 142
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    .line 143
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->e:I

    .line 144
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->f:I

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->h:I

    .line 147
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 148
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->j:I

    .line 149
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->k:I

    .line 150
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->l:I

    move v0, v1

    move v2, p2

    .line 152
    :goto_0
    if-ge v2, v4, :cond_0

    .line 154
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v5, v3

    .line 155
    add-int/lit8 v3, v2, 0x1

    .line 157
    packed-switch v0, :pswitch_data_0

    move v2, v3

    .line 195
    goto :goto_0

    .line 161
    :pswitch_0
    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v2, v3

    .line 174
    goto :goto_0

    .line 165
    :sswitch_0
    iput v2, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    .line 197
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpURI;->h:I

    .line 201
    iput p2, p0, Lorg/eclipse/jetty/http/HttpURI;->i:I

    .line 202
    return-void

    .line 170
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_1

    .line 179
    :pswitch_1
    sparse-switch v5, :sswitch_data_1

    :goto_2
    move v2, v3

    .line 192
    goto :goto_0

    .line 183
    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No closing \']\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    sget-object v3, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v2, p2, p3, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    move v0, v1

    .line 187
    goto :goto_2

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch

    .line 179
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_2
        0x5d -> :sswitch_3
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 762
    iget v0, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 4

    .prologue
    .line 768
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    iget v2, p0, Lorg/eclipse/jetty/http/HttpURI;->m:I

    iget v3, p0, Lorg/eclipse/jetty/http/HttpURI;->d:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BII)V

    .line 769
    return-void
.end method
