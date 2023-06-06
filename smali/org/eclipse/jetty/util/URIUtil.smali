.class public Lorg/eclipse/jetty/util/URIUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "org.eclipse.jetty.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 409
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 411
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 450
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object p0, p1

    .line 413
    goto :goto_0

    .line 415
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 419
    if-gez v0, :cond_4

    .line 420
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 421
    :cond_4
    if-nez v0, :cond_5

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 423
    :cond_5
    if-gez v0, :cond_6

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 426
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 427
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 431
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 433
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 437
    :cond_7
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    :cond_8
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 442
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 445
    :cond_9
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v10, 0x2f

    const/16 v9, 0x2e

    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-object p0

    .line 479
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 480
    invoke-virtual {p0, v10, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 483
    :goto_1
    if-lez v1, :cond_3

    .line 485
    sub-int v0, v1, v6

    packed-switch v0, :pswitch_data_0

    .line 498
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v10, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    move v1, v6

    move v6, v0

    goto :goto_1

    .line 488
    :pswitch_0
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    .line 502
    :cond_3
    if-ge v6, v1, :cond_0

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v4

    move v2, v5

    move v7, v5

    move v0, v1

    move v1, v6

    .line 510
    :goto_3
    if-lez v0, :cond_f

    .line 512
    sub-int v6, v0, v1

    packed-switch v6, :pswitch_data_1

    .line 569
    if-lez v3, :cond_16

    add-int/lit8 v6, v3, -0x1

    if-nez v6, :cond_15

    .line 571
    if-ltz v1, :cond_e

    move v3, v1

    .line 572
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v2, v7, :cond_4

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_4

    .line 573
    add-int/lit8 v3, v3, 0x1

    .line 578
    :cond_4
    :goto_5
    if-gtz v6, :cond_14

    if-ltz v3, :cond_14

    if-lt v2, v3, :cond_14

    .line 580
    invoke-virtual {v8, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 582
    if-lez v6, :cond_13

    move v2, v5

    .line 586
    :goto_6
    add-int/lit8 v3, v1, -0x1

    .line 587
    :goto_7
    if-ltz v3, :cond_12

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_12

    .line 588
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 492
    :pswitch_1
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    add-int/lit8 v0, v6, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_3

    goto :goto_2

    .line 515
    :pswitch_2
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_6

    .line 517
    if-lez v3, :cond_16

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_16

    .line 519
    if-ltz v1, :cond_5

    move v6, v1

    .line 520
    :goto_8
    if-lez v6, :cond_19

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v2, v7, :cond_19

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_19

    .line 521
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto :goto_5

    :cond_5
    move v6, v4

    .line 519
    goto :goto_8

    .line 526
    :cond_6
    if-gez v1, :cond_7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v11, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_7

    move v6, v3

    move v3, v7

    .line 527
    goto :goto_5

    .line 529
    :cond_7
    if-gez v2, :cond_8

    move v2, v0

    .line 532
    :cond_8
    if-ltz v1, :cond_9

    if-nez v1, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_a

    .line 534
    :cond_9
    add-int/lit8 v6, v1, 0x1

    .line 535
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v2, v7, :cond_19

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_19

    .line 536
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    .line 539
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v0, v6, :cond_1b

    .line 540
    add-int/lit8 v0, v1, 0x1

    .line 542
    :goto_9
    add-int/lit8 v6, v1, -0x1

    .line 543
    :goto_a
    if-ltz v6, :cond_1a

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1a

    .line 544
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 548
    :pswitch_3
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_b

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_d

    .line 550
    :cond_b
    if-lez v3, :cond_16

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_16

    .line 551
    if-ltz v1, :cond_c

    move v6, v1

    .line 552
    :goto_b
    if-lez v6, :cond_19

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v2, v7, :cond_19

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_19

    .line 553
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    :cond_c
    move v6, v4

    .line 551
    goto :goto_b

    .line 559
    :cond_d
    if-gez v2, :cond_18

    .line 562
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 563
    add-int/lit8 v2, v1, -0x1

    .line 564
    :goto_d
    if-ltz v2, :cond_17

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_17

    .line 565
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_e
    move v3, v4

    .line 571
    goto/16 :goto_4

    .line 592
    :cond_f
    if-lez v3, :cond_10

    .line 593
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 596
    :cond_10
    if-ltz v2, :cond_11

    .line 597
    invoke-virtual {v8, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 599
    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_12
    move v7, v2

    move v2, v0

    move v0, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_3

    :cond_13
    move v0, v5

    move v2, v5

    goto/16 :goto_6

    :cond_14
    move v0, v2

    move v2, v3

    goto/16 :goto_6

    :cond_15
    move v3, v7

    goto/16 :goto_5

    :cond_16
    move v6, v3

    move v3, v7

    goto/16 :goto_5

    :cond_17
    move v7, v1

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v12

    goto/16 :goto_3

    :cond_18
    move v0, v2

    goto :goto_c

    :cond_19
    move v12, v3

    move v3, v6

    move v6, v12

    goto/16 :goto_5

    :cond_1a
    move v7, v0

    move v0, v1

    move v1, v6

    goto/16 :goto_3

    :cond_1b
    move v0, v1

    goto/16 :goto_9

    .line 485
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 512
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 610
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 614
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v1

    move v0, v1

    .line 618
    :goto_1
    if-ge v2, v4, :cond_3

    .line 620
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 621
    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 633
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 634
    goto :goto_1

    .line 626
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 627
    if-ne v0, v5, :cond_2

    .line 636
    :cond_3
    if-lt v0, v5, :cond_0

    .line 639
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 640
    invoke-virtual {v5, p0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move v3, v0

    .line 643
    :goto_2
    if-ge v2, v4, :cond_5

    .line 645
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 646
    sparse-switch v6, :sswitch_data_1

    .line 657
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 659
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    .line 660
    goto :goto_2

    .line 649
    :sswitch_2
    invoke-virtual {v5, p0, v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 662
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 652
    :sswitch_3
    add-int/lit8 v0, v3, 0x1

    if-nez v3, :cond_4

    .line 653
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 646
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 266
    if-nez p0, :cond_1

    move-object p0, v0

    .line 350
    :cond_0
    :goto_0
    return-object p0

    .line 275
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v6

    move v4, v6

    move v5, v6

    move-object v1, v0

    .line 277
    :goto_1
    if-ge v2, v7, :cond_8

    .line 279
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 281
    const/16 v3, 0x25

    if-ne v8, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    if-ge v3, v7, :cond_3

    .line 283
    if-nez v1, :cond_2

    .line 285
    new-array v1, v7, [C

    .line 286
    new-array v0, v7, [B

    .line 287
    invoke-virtual {p0, v6, v2, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 289
    :cond_2
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v8, v2, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x10

    invoke-static {p0, v8, v9, v10}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 290
    add-int/lit8 v2, v2, 0x2

    move-object v4, v1

    move v1, v3

    move v3, v5

    move-object v11, v0

    move v0, v2

    move-object v2, v11

    .line 277
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v11, v1

    move-object v1, v4

    move v4, v11

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto :goto_1

    .line 293
    :cond_3
    const/16 v3, 0x3b

    if-ne v8, v3, :cond_4

    .line 295
    if-nez v1, :cond_8

    .line 297
    new-array v1, v7, [C

    .line 298
    invoke-virtual {p0, v6, v2, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    move-object v3, v1

    .line 330
    :goto_3
    if-eqz v3, :cond_0

    .line 334
    if-lez v4, :cond_6

    .line 340
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v7, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v1, v0, v5, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 346
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 350
    :goto_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v6, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 303
    :cond_4
    if-nez v0, :cond_5

    .line 305
    add-int/lit8 v3, v5, 0x1

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v4

    move-object v4, v1

    move v1, v12

    .line 306
    goto :goto_2

    .line 310
    :cond_5
    if-lez v4, :cond_7

    .line 316
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    sget-object v10, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v3, v0, v9, v4, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 323
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    .line 327
    :goto_7
    add-int/lit8 v4, v5, 0x1

    aput-char v8, v1, v5

    move v11, v2

    move-object v2, v0

    move v0, v11

    move v12, v3

    move v3, v4

    move-object v4, v1

    move v1, v12

    goto :goto_2

    .line 318
    :catch_0
    move-exception v3

    .line 320
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_6

    .line 342
    :catch_1
    move-exception v1

    .line 344
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v3, v4

    goto :goto_7

    :cond_8
    move v2, v5

    move-object v3, v1

    goto :goto_3
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 360
    const/4 v0, 0x0

    move v1, v4

    move v5, v4

    .line 363
    :goto_0
    if-ge v1, p2, :cond_5

    .line 365
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    .line 367
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    if-ge v3, p2, :cond_0

    .line 369
    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    const/16 v6, 0x10

    invoke-static {p0, v2, v3, v6}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 370
    add-int/lit8 v1, v1, 0x2

    move v3, v2

    .line 383
    :goto_1
    if-nez v0, :cond_2

    .line 385
    new-array v0, p2, [B

    move v2, v4

    .line 386
    :goto_2
    if-ge v2, v5, :cond_2

    .line 387
    add-int v6, v2, p1

    aget-byte v6, p0, v6

    aput-byte v6, v0, v2

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 372
    :cond_0
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 393
    :goto_3
    if-nez v0, :cond_3

    .line 394
    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_4
    return-object v0

    .line 377
    :cond_1
    if-nez v0, :cond_4

    .line 379
    add-int/lit8 v2, v5, 0x1

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    .line 363
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 390
    :cond_2
    add-int/lit8 v2, v5, 0x1

    aput-byte v3, v0, v5

    move v7, v1

    move v1, v2

    move-object v2, v0

    move v0, v7

    goto :goto_5

    .line 395
    :cond_3
    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v1, p2

    goto :goto_3
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object p0

    .line 67
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodePath(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    .line 80
    if-nez p0, :cond_1

    move v0, v1

    .line 83
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 86
    sparse-switch v3, :sswitch_data_0

    .line 100
    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    .line 104
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    :goto_1
    if-nez p0, :cond_2

    .line 211
    :goto_2
    return-object v2

    .line 97
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    .line 98
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 120
    :cond_2
    monitor-enter p0

    .line 122
    if-eqz v0, :cond_4

    .line 124
    :goto_3
    :try_start_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 126
    aget-byte v2, v0, v1

    .line 127
    sparse-switch v2, :sswitch_data_1

    .line 157
    if-gez v2, :cond_3

    .line 159
    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v2, p0}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    .line 124
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 130
    :sswitch_1
    const-string v2, "%25"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :sswitch_2
    :try_start_2
    const-string v2, "%3F"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 136
    :sswitch_3
    const-string v2, "%3B"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 139
    :sswitch_4
    const-string v2, "%23"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 142
    :sswitch_5
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 145
    :sswitch_6
    const-string v2, "%27"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 148
    :sswitch_7
    const-string v2, "%3C"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 151
    :sswitch_8
    const-string v2, "%3E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 154
    :sswitch_9
    const-string v2, "%20"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 163
    :cond_3
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 177
    :sswitch_a
    const-string v0, "%25"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :goto_5
    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_2

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 180
    :sswitch_b
    const-string v0, "%3F"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 183
    :sswitch_c
    const-string v0, "%3B"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 186
    :sswitch_d
    const-string v0, "%23"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 189
    :sswitch_e
    const-string v0, "%22"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 192
    :sswitch_f
    const-string v0, "%27"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 195
    :sswitch_10
    const-string v0, "%3C"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 198
    :sswitch_11
    const-string v0, "%3E"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 201
    :sswitch_12
    const-string v0, "%20"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 209
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p0

    .line 211
    goto/16 :goto_2

    :cond_6
    move-object v0, v2

    goto/16 :goto_1

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch

    .line 174
    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_12
        0x22 -> :sswitch_e
        0x23 -> :sswitch_d
        0x25 -> :sswitch_a
        0x27 -> :sswitch_f
        0x3b -> :sswitch_c
        0x3c -> :sswitch_10
        0x3e -> :sswitch_11
        0x3f -> :sswitch_b
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x25

    .line 225
    if-nez p0, :cond_3

    move v0, v1

    .line 228
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 231
    if-eq v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    :cond_1
    if-nez p0, :cond_3

    .line 238
    const/4 p0, 0x0

    .line 256
    :goto_1
    return-object p0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_3
    monitor-enter p0

    .line 243
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 245
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    if-eq v0, v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 248
    :cond_4
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0x10

    invoke-static {p0, v0, v2}, Lorg/eclipse/jetty/util/StringUtil;->append(Ljava/lang/StringBuilder;BI)V

    .line 243
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 672
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 674
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 675
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    .line 676
    const/4 v1, 0x1

    .line 686
    :cond_0
    return v1

    .line 677
    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    :cond_3
    if-lez v0, :cond_0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    .line 672
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 459
    if-eqz p0, :cond_0

    const-string v1, "/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 461
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 462
    if-ltz v1, :cond_0

    .line 463
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
