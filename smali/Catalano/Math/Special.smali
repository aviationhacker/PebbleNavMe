.class public final LCatalano/Math/Special;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:[D

.field private static c:[D


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BSpline(ID)D
    .locals 11

    .prologue
    .line 207
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0}, LCatalano/Math/Special;->Factorial(I)D

    move-result-wide v2

    div-double v2, v0, v2

    .line 214
    const/4 v1, 0x1

    .line 215
    const/4 v0, 0x0

    move-wide v4, v2

    move v3, v1

    move v2, v0

    :goto_0
    add-int/lit8 v0, p0, 0x1

    if-gt v2, v0, :cond_3

    .line 217
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0, v2}, LCatalano/Math/Special;->Binomial(II)D

    move-result-wide v0

    int-to-double v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v6, p1

    int-to-double v8, v2

    sub-double/2addr v6, v8

    int-to-double v8, p0

    invoke-static {v6, v7, v8, v9}, LCatalano/Math/Tools;->TruncatedPower(DD)D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 218
    if-eqz v3, :cond_1

    :goto_1
    add-double/2addr v4, v0

    .line 219
    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 215
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v0

    goto :goto_0

    .line 218
    :cond_1
    neg-double v0, v0

    goto :goto_1

    .line 219
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 222
    :cond_3
    return-wide v4
.end method

.method public static Binomial(II)D
    .locals 4

    .prologue
    .line 232
    invoke-static {p0}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v0

    invoke-static {p1}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sub-int v2, p0, p1

    invoke-static {v2}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static Epslon(D)D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 375
    .line 377
    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    move-wide v0, v2

    .line 379
    :goto_0
    cmpl-double v6, v0, v2

    if-nez v6, :cond_0

    .line 380
    sub-double v0, v4, v8

    .line 381
    add-double v6, v0, v0

    add-double/2addr v0, v6

    .line 382
    sub-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Erf(D)D
    .locals 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x5

    .line 138
    new-array v0, v6, [D

    fill-array-data v0, :array_0

    .line 146
    new-array v1, v6, [D

    fill-array-data v1, :array_1

    .line 155
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 156
    invoke-static {p0, p1}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    .line 161
    :goto_0
    return-wide v0

    .line 158
    :cond_0
    mul-double v2, p0, p0

    .line 159
    const/4 v4, 0x4

    invoke-static {v2, v3, v0, v4}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v4

    mul-double/2addr v4, p0

    invoke-static {v2, v3, v1, v6}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v0

    div-double v0, v4, v0

    .line 161
    goto :goto_0

    .line 138
    nop

    :array_0
    .array-data 8
        0x402335bf1e375d88L    # 9.604973739870516
        0x405681aa4e9e067fL    # 90.02601972038427
        0x40a17002bcb435b7L    # 2232.005345946843
        0x40bb5b533c72ef90L    # 7003.325141128051
        0x40eb2509a44213dcL    # 55592.30130103949
    .end array-data

    .line 146
    :array_1
    .array-data 8
        0x4040c7e63fefa6baL    # 33.56171416475031
        0x40804add14c63aeeL    # 521.3579497801527
        0x40b1f252e680fd12L    # 4594.323829709801
        0x40d6194001017c0aL    # 22629.000061389095
        0x40e80e6c9dc8f567L    # 49267.39426086359
    .end array-data
.end method

.method public static Erfc(D)D
    .locals 10

    .prologue
    .line 48
    const/16 v0, 0x9

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    .line 60
    const/16 v0, 0x8

    new-array v4, v0, [D

    fill-array-data v4, :array_1

    .line 72
    const/4 v0, 0x6

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    .line 81
    const/4 v0, 0x6

    new-array v5, v0, [D

    fill-array-data v5, :array_3

    .line 91
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    neg-double v0, p0

    .line 94
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1}, LCatalano/Math/Special;->Erf(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 128
    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    move-wide v0, p0

    .line 92
    goto :goto_0

    .line 96
    :cond_2
    neg-double v6, p0

    mul-double/2addr v6, p0

    .line 98
    const-wide v8, -0x3f79d1bd0105c611L    # -709.782712893384

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    .line 100
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_1

    .line 101
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 104
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 106
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_6

    .line 108
    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v2

    .line 109
    const/16 v5, 0x8

    invoke-static {v0, v1, v4, v5}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v0

    .line 117
    :goto_2
    mul-double/2addr v2, v6

    div-double v0, v2, v0

    .line 119
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v0, v2, v0

    .line 121
    :cond_5
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 123
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_1

    .line 113
    :cond_6
    const/4 v2, 0x5

    invoke-static {v0, v1, v3, v2}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v2

    .line 114
    const/4 v4, 0x6

    invoke-static {v0, v1, v5, v4}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v0

    goto :goto_2

    .line 124
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 48
    :array_0
    .array-data 8
        0x3df0eb24a24f6479L    # 2.461969814735305E-10
        0x3fe20dd746363488L    # 0.5641895648310689
        0x401dda53dec56dc4L    # 7.463210564422699
        0x4048518facadba66L    # 48.63719709856814
        0x406890aaa9e020f7L    # 196.5208329560771
        0x4080738fc264cf58L    # 526.4451949954773
        0x408d343a6c7434d8L    # 934.5285271719576
        0x40900e3521d6972aL    # 1027.5518868951572
        0x40816c485de8ffb3L    # 557.5353353693994
    .end array-data

    .line 60
    :array_1
    .array-data 8
        0x402a74d5fd7c23ccL    # 13.228195115474499
        0x4055ad42fee17365L    # 86.70721408859897
        0x40762f01246f610dL    # 354.9377788878199
        0x408e7dab02f641d0L    # 975.7085017432055
        0x409c7fa2fca47151L    # 1823.9091668790973
        0x40a18cacdafaf4ffL    # 2246.3376081871097
        0x4099e2a70192ede2L    # 1656.6630919416134
        0x40816c4860c442d6L    # 557.5353408177277
    .end array-data

    .line 72
    :array_2
    .array-data 8
        0x3fe20dd750429b62L    # 0.5641895835477551
        0x3ff467e6ebb8c5a6L    # 1.275366707599781
        0x40141381f436a71aL    # 5.019050422511805
        0x4018a40e58dd0c0cL    # 6.160210979930536
        0x401da3939718960eL    # 7.4097426995044895
        0x4007d4b80a470367L    # 2.9788666537210022
    .end array-data

    .line 81
    :array_3
    .array-data 8
        0x400215900917ce21L    # 2.2605286322011726
        0x4022cac521d84cfdL    # 9.396035249380015
        0x402819107f052c4dL    # 12.048953980809666
        0x403114d9959c7ff5L    # 17.08144507475659
        0x402337caaa6326c1L    # 9.608968090632859
        0x400af3de5ab62d90L    # 3.369076451000815
    .end array-data
.end method

.method public static Expm1(D)D
    .locals 4

    .prologue
    .line 363
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 364
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    add-double/2addr v0, p0

    .line 366
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static Factorial(I)D
    .locals 8

    .prologue
    const/4 v6, 0x4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 292
    sget-object v0, LCatalano/Math/Special;->b:[D

    if-nez v0, :cond_0

    .line 294
    const/16 v0, 0x21

    new-array v0, v0, [D

    sput-object v0, LCatalano/Math/Special;->b:[D

    .line 295
    sget-object v0, LCatalano/Math/Special;->b:[D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    sget-object v0, LCatalano/Math/Special;->b:[D

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    .line 296
    sget-object v0, LCatalano/Math/Special;->b:[D

    const/4 v1, 0x2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    sget-object v0, LCatalano/Math/Special;->b:[D

    const/4 v1, 0x3

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    aput-wide v2, v0, v1

    .line 297
    sget-object v0, LCatalano/Math/Special;->b:[D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    aput-wide v2, v0, v6

    sput v6, LCatalano/Math/Special;->a:I

    .line 300
    :cond_0
    if-gez p0, :cond_1

    .line 302
    :try_start_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Argument cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :cond_1
    const/16 v0, 0x20

    if-le p0, v0, :cond_2

    .line 310
    int-to-double v0, p0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 319
    :goto_0
    return-wide v0

    .line 315
    :cond_2
    :goto_1
    sget v0, LCatalano/Math/Special;->a:I

    if-ge v0, p0, :cond_3

    .line 316
    sget v0, LCatalano/Math/Special;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LCatalano/Math/Special;->a:I

    .line 317
    sget-object v1, LCatalano/Math/Special;->b:[D

    sget v2, LCatalano/Math/Special;->a:I

    sget-object v3, LCatalano/Math/Special;->b:[D

    aget-wide v4, v3, v0

    sget v0, LCatalano/Math/Special;->a:I

    int-to-double v6, v0

    mul-double/2addr v4, v6

    aput-wide v4, v1, v2

    goto :goto_1

    .line 319
    :cond_3
    sget-object v0, LCatalano/Math/Special;->b:[D

    aget-wide v0, v0, p0

    goto :goto_0
.end method

.method public static Log1m(D)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 329
    cmpl-double v0, p0, v4

    if-ltz v0, :cond_0

    .line 330
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 337
    :goto_0
    return-wide v0

    .line 332
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 333
    sub-double v0, v4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_0

    .line 337
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    add-double/2addr v0, v4

    neg-double v0, v0

    mul-double/2addr v0, p0

    goto :goto_0
.end method

.method public static Log1p(D)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 346
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 347
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 354
    :goto_0
    return-wide v0

    .line 349
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 350
    add-double v0, v4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_0

    .line 354
    :cond_1
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, p0

    add-double/2addr v0, v4

    mul-double/2addr v0, p0

    goto :goto_0
.end method

.method public static LogBinomial(II)D
    .locals 4

    .prologue
    .line 242
    invoke-static {p0}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v0

    invoke-static {p1}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sub-int v2, p0, p1

    invoke-static {v2}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static LogDiff(DD)D
    .locals 4

    .prologue
    .line 406
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    .line 407
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, p0

    .line 409
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public static LogFactorial(I)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 251
    sget-object v2, LCatalano/Math/Special;->c:[D

    if-nez v2, :cond_0

    .line 252
    const/16 v2, 0x65

    new-array v2, v2, [D

    sput-object v2, LCatalano/Math/Special;->c:[D

    .line 254
    :cond_0
    if-gez p0, :cond_1

    .line 258
    :try_start_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Argument cannot be negative."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    :cond_1
    const/4 v2, 0x1

    if-gt p0, v2, :cond_2

    .line 277
    :goto_0
    return-wide v0

    .line 268
    :cond_2
    const/16 v2, 0x64

    if-gt p0, v2, :cond_4

    .line 272
    sget-object v2, LCatalano/Math/Special;->c:[D

    aget-wide v2, v2, p0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_3

    sget-object v0, LCatalano/Math/Special;->c:[D

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_3
    sget-object v2, LCatalano/Math/Special;->c:[D

    int-to-double v0, p0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v0

    aput-wide v0, v2, p0

    goto :goto_0

    .line 277
    :cond_4
    int-to-double v0, p0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static LogSum(DD)D
    .locals 4

    .prologue
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 419
    cmpl-double v0, p0, v2

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-wide p2

    .line 421
    :cond_0
    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    move-wide p2, p0

    .line 422
    goto :goto_0

    .line 424
    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    .line 425
    sub-double v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v0

    add-double p2, p0, v0

    goto :goto_0

    .line 427
    :cond_2
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v0

    add-double/2addr p2, v0

    goto :goto_0
.end method

.method public static LogSum(FF)D
    .locals 4

    .prologue
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 437
    cmpl-float v0, p0, v1

    if-nez v0, :cond_0

    .line 438
    float-to-double v0, p1

    .line 445
    :goto_0
    return-wide v0

    .line 439
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 440
    float-to-double v0, p0

    goto :goto_0

    .line 442
    :cond_1
    cmpl-float v0, p0, p1

    if-lez v0, :cond_2

    .line 443
    float-to-double v0, p0

    sub-float v2, p1, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 445
    :cond_2
    float-to-double v0, p1

    sub-float v2, p0, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static P1evl(D[DI)D
    .locals 6

    .prologue
    .line 192
    const/4 v0, 0x0

    aget-wide v0, p2, v0

    add-double v2, p0, v0

    .line 194
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 195
    mul-double/2addr v2, p0

    aget-wide v4, p2, v0

    add-double/2addr v2, v4

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-wide v2
.end method

.method public static Polevl(D[DI)D
    .locals 6

    .prologue
    .line 174
    const/4 v0, 0x0

    aget-wide v2, p2, v0

    .line 176
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p3, :cond_0

    .line 177
    mul-double/2addr v2, p0

    aget-wide v4, p2, v0

    add-double/2addr v2, v4

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-wide v2
.end method

.method public static Sign(DD)D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 395
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    move-wide v0, p0

    .line 396
    :goto_0
    cmpl-double v2, p2, v2

    if-ltz v2, :cond_1

    :goto_1
    return-wide v0

    .line 395
    :cond_0
    neg-double v0, p0

    goto :goto_0

    .line 396
    :cond_1
    neg-double v0, v0

    goto :goto_1
.end method
