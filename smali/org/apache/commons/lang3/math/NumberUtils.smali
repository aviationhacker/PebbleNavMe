.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 33
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 35
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 37
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 39
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 41
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 43
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 45
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v4}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 47
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v5}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 49
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 51
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 53
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 57
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 59
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 61
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 63
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 65
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 67
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 605
    if-nez p0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 609
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 610
    goto :goto_0

    .line 608
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 613
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    .line 713
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 693
    if-nez p0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 643
    if-nez p0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 677
    if-nez p0, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 680
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 445
    if-nez p0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 461
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 465
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 466
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v6, 0x45

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x1

    .line 468
    if-le v2, v8, :cond_9

    .line 470
    if-le v6, v8, :cond_8

    .line 471
    if-lt v6, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v6, v0, :cond_6

    .line 472
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 490
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_12

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_12

    .line 491
    if-le v6, v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 492
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    .line 499
    :goto_3
    sparse-switch v5, :sswitch_data_0

    .line 545
    :goto_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_8
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 480
    :cond_9
    if-le v6, v8, :cond_b

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v6, v0, :cond_a

    .line 482
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_a
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    move-object v0, v1

    .line 488
    goto/16 :goto_2

    :cond_b
    move-object v0, p0

    .line 486
    goto :goto_5

    :cond_c
    move v2, v4

    .line 498
    goto :goto_3

    .line 502
    :sswitch_0
    if-nez v0, :cond_f

    if-nez v1, :cond_f

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_d

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 506
    :cond_e
    :try_start_0
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 510
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_0

    .line 513
    :cond_f
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :sswitch_1
    :try_start_1
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 531
    :cond_10
    :goto_6
    :sswitch_2
    :try_start_2
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v10

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 539
    :cond_11
    :goto_7
    :try_start_3
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto/16 :goto_0

    .line 551
    :cond_12
    if-le v6, v8, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_13

    .line 552
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_13
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    .line 559
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 560
    :catch_1
    move-exception v0

    .line 564
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 565
    :catch_2
    move-exception v0

    .line 568
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_0

    .line 572
    :cond_14
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    .line 574
    :goto_8
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 582
    :cond_15
    :goto_9
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v2

    cmpl-double v2, v2, v10

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 590
    :cond_16
    :goto_a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_0

    :cond_17
    move v0, v4

    .line 572
    goto :goto_8

    .line 540
    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 586
    :catch_4
    move-exception v0

    goto :goto_a

    .line 578
    :catch_5
    move-exception v1

    goto :goto_9

    .line 535
    :catch_6
    move-exception v0

    goto :goto_7

    .line 524
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1287
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1290
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1291
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1295
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1312
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v2

    .line 1315
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 1316
    array-length v3, v7

    .line 1322
    aget-char v0, v7, v2

    if-ne v0, v13, :cond_5

    move v0, v1

    .line 1323
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_7

    .line 1324
    aget-char v4, v7, v0

    if-ne v4, v11, :cond_7

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v7, v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_7

    .line 1325
    add-int/lit8 v0, v0, 0x2

    .line 1326
    if-eq v0, v3, :cond_0

    .line 1330
    :goto_2
    array-length v3, v7

    if-ge v0, v3, :cond_6

    .line 1331
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_2

    aget-char v3, v7, v0

    if-le v3, v12, :cond_4

    :cond_2
    aget-char v3, v7, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    aget-char v3, v7, v0

    const/16 v4, 0x66

    if-le v3, v4, :cond_4

    :cond_3
    aget-char v3, v7, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_0

    .line 1330
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1322
    goto :goto_1

    :cond_6
    move v2, v1

    .line 1337
    goto :goto_0

    .line 1340
    :cond_7
    add-int/lit8 v8, v3, -0x1

    move v6, v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v0, v2

    .line 1345
    :goto_3
    if-lt v6, v8, :cond_8

    add-int/lit8 v9, v8, 0x1

    if-ge v6, v9, :cond_e

    if-eqz v3, :cond_e

    if-nez v0, :cond_e

    .line 1346
    :cond_8
    aget-char v9, v7, v6

    if-lt v9, v11, :cond_9

    aget-char v9, v7, v6

    if-gt v9, v12, :cond_9

    move v0, v1

    move v3, v2

    .line 1376
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1350
    :cond_9
    aget-char v9, v7, v6

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_a

    .line 1351
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v4, v1

    .line 1355
    goto :goto_4

    .line 1356
    :cond_a
    aget-char v9, v7, v6

    const/16 v10, 0x65

    if-eq v9, v10, :cond_b

    aget-char v9, v7, v6

    const/16 v10, 0x45

    if-ne v9, v10, :cond_c

    .line 1358
    :cond_b
    if-nez v5, :cond_0

    .line 1362
    if-eqz v0, :cond_0

    move v3, v1

    move v5, v1

    .line 1366
    goto :goto_4

    .line 1367
    :cond_c
    aget-char v0, v7, v6

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_d

    aget-char v0, v7, v6

    if-ne v0, v13, :cond_0

    .line 1368
    :cond_d
    if-eqz v3, :cond_0

    move v0, v2

    move v3, v2

    .line 1372
    goto :goto_4

    .line 1378
    :cond_e
    array-length v8, v7

    if-ge v6, v8, :cond_15

    .line 1379
    aget-char v8, v7, v6

    if-lt v8, v11, :cond_f

    aget-char v8, v7, v6

    if-gt v8, v12, :cond_f

    move v2, v1

    .line 1381
    goto/16 :goto_0

    .line 1383
    :cond_f
    aget-char v8, v7, v6

    const/16 v9, 0x65

    if-eq v8, v9, :cond_0

    aget-char v8, v7, v6

    const/16 v9, 0x45

    if-eq v8, v9, :cond_0

    .line 1387
    aget-char v8, v7, v6

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    .line 1388
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v2, v0

    .line 1393
    goto/16 :goto_0

    .line 1395
    :cond_10
    if-nez v3, :cond_12

    aget-char v3, v7, v6

    const/16 v8, 0x64

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x44

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x66

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x46

    if-ne v3, v8, :cond_12

    :cond_11
    move v2, v0

    .line 1400
    goto/16 :goto_0

    .line 1402
    :cond_12
    aget-char v3, v7, v6

    const/16 v8, 0x6c

    if-eq v3, v8, :cond_13

    aget-char v3, v7, v6

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_0

    .line 1405
    :cond_13
    if-eqz v0, :cond_14

    if-nez v5, :cond_14

    if-nez v4, :cond_14

    :goto_5
    move v2, v1

    goto/16 :goto_0

    :cond_14
    move v1, v2

    goto :goto_5

    .line 1412
    :cond_15
    if-nez v3, :cond_16

    if-eqz v0, :cond_16

    :goto_6
    move v2, v1

    goto/16 :goto_0

    :cond_16
    move v1, v2

    goto :goto_6
.end method

.method public static max(BBB)B
    .locals 1

    .prologue
    .line 1234
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1237
    :goto_0
    if-le p2, v0, :cond_0

    .line 1240
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([B)B
    .locals 3

    .prologue
    .line 984
    if-nez p0, :cond_0

    .line 985
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 992
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 993
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_2

    .line 994
    aget-byte v1, p0, v0

    .line 992
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    :cond_3
    return v1
.end method

.method public static max(DDD)D
    .locals 2

    .prologue
    .line 1256
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 6

    .prologue
    .line 1012
    if-nez p0, :cond_0

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1015
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 1020
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1021
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1022
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1029
    :cond_2
    return-wide v2

    .line 1024
    :cond_3
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_4

    .line 1025
    aget-wide v2, p0, v0

    .line 1020
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1

    .prologue
    .line 1272
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3

    .prologue
    .line 1043
    if-nez p0, :cond_0

    .line 1044
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1051
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1052
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1053
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1060
    :cond_2
    return v1

    .line 1055
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1056
    aget v1, p0, v0

    .line 1051
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 1

    .prologue
    .line 1198
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1201
    :goto_0
    if-le p2, v0, :cond_0

    .line 1204
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([I)I
    .locals 3

    .prologue
    .line 930
    if-nez p0, :cond_0

    .line 931
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 933
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 938
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 939
    aget v2, p0, v0

    if-le v2, v1, :cond_2

    .line 940
    aget v1, p0, v0

    .line 938
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_3
    return v1
.end method

.method public static max(JJJ)J
    .locals 4

    .prologue
    .line 1180
    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    move-wide v0, p2

    .line 1183
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    .line 1186
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static max([J)J
    .locals 6

    .prologue
    .line 903
    if-nez p0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 911
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 912
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 913
    aget-wide v2, p0, v0

    .line 911
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    :cond_3
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 1

    .prologue
    .line 1216
    if-le p1, p0, :cond_1

    move v0, p1

    .line 1219
    :goto_0
    if-le p2, v0, :cond_0

    .line 1222
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static max([S)S
    .locals 3

    .prologue
    .line 957
    if-nez p0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 960
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 965
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 966
    aget-short v2, p0, v0

    if-le v2, v1, :cond_2

    .line 967
    aget-short v1, p0, v0

    .line 965
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_3
    return v1
.end method

.method public static min(BBB)B
    .locals 1

    .prologue
    .line 1128
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1131
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1134
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([B)B
    .locals 3

    .prologue
    .line 812
    if-nez p0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 820
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 821
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 822
    aget-byte v1, p0, v0

    .line 820
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    :cond_3
    return v1
.end method

.method public static min(DDD)D
    .locals 2

    .prologue
    .line 1150
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 6

    .prologue
    .line 840
    if-nez p0, :cond_0

    .line 841
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 848
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 849
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 857
    :cond_2
    return-wide v2

    .line 852
    :cond_3
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_4

    .line 853
    aget-wide v2, p0, v0

    .line 848
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1

    .prologue
    .line 1166
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3

    .prologue
    .line 871
    if-nez p0, :cond_0

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 879
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 880
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 881
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 888
    :cond_2
    return v1

    .line 883
    :cond_3
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 884
    aget v1, p0, v0

    .line 879
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 1

    .prologue
    .line 1092
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1095
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1098
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([I)I
    .locals 3

    .prologue
    .line 758
    if-nez p0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 766
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 767
    aget v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 768
    aget v1, p0, v0

    .line 766
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    :cond_3
    return v1
.end method

.method public static min(JJJ)J
    .locals 4

    .prologue
    .line 1074
    cmp-long v0, p2, p0

    if-gez v0, :cond_1

    move-wide v0, p2

    .line 1077
    :goto_0
    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    .line 1080
    :goto_1
    return-wide p4

    :cond_0
    move-wide p4, v0

    goto :goto_1

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static min([J)J
    .locals 6

    .prologue
    .line 731
    if-nez p0, :cond_0

    .line 732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 739
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 740
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2

    .line 741
    aget-wide v2, p0, v0

    .line 739
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_3
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 1

    .prologue
    .line 1110
    if-ge p1, p0, :cond_1

    move v0, p1

    .line 1113
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1116
    :goto_1
    return p2

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static min([S)S
    .locals 3

    .prologue
    .line 785
    if-nez p0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_1
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 793
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 794
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 795
    aget-short v1, p0, v0

    .line 793
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_3
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 329
    :goto_0
    return p1

    .line 327
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 279
    :goto_0
    return-wide p1

    .line 277
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 227
    :goto_0
    return p1

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 126
    :goto_0
    return p1

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 175
    :goto_0
    return-wide p1

    .line 173
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 378
    :goto_0
    return p1

    .line 376
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
