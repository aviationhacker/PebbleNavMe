.class public LCatalano/Math/Functions/Gaussian;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide v0, p0, LCatalano/Math/Functions/Gaussian;->a:D

    .line 42
    iput-wide v0, p0, LCatalano/Math/Functions/Gaussian;->b:D

    .line 49
    invoke-virtual {p0, p1, p2}, LCatalano/Math/Functions/Gaussian;->setSigma(D)V

    .line 50
    return-void
.end method


# virtual methods
.method public Function1D(D)D
    .locals 7

    .prologue
    .line 77
    mul-double v0, p1, p1

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    iget-wide v4, p0, LCatalano/Math/Functions/Gaussian;->b:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Math/Functions/Gaussian;->a:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Function2D(DD)D
    .locals 7

    .prologue
    .line 87
    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, LCatalano/Math/Functions/Gaussian;->b:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Kernel1D(I)[D
    .locals 6

    .prologue
    .line 96
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/16 v0, 0x65

    if-le p1, v0, :cond_1

    .line 98
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong size"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :cond_1
    div-int/lit8 v0, p1, 0x2

    .line 105
    new-array v2, p1, [D

    .line 108
    neg-int v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 110
    int-to-double v4, v1

    invoke-virtual {p0, v4, v5}, LCatalano/Math/Functions/Gaussian;->Function1D(D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 108
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-object v2
.end method

.method public Kernel2D(I)[[D
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 122
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/16 v0, 0x65

    if-le p1, v0, :cond_1

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong size"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :cond_1
    div-int/lit8 v8, p1, 0x2

    .line 131
    filled-new-array {p1, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    neg-int v1, v8

    move v6, v2

    move v7, v1

    :goto_0
    if-ge v6, p1, :cond_3

    .line 137
    neg-int v1, v8

    move v3, v1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_2

    .line 139
    aget-object v9, v0, v6

    int-to-double v10, v3

    int-to-double v12, v7

    invoke-virtual {p0, v10, v11, v12, v13}, LCatalano/Math/Functions/Gaussian;->Function2D(DD)D

    move-result-wide v10

    aput-wide v10, v9, v1

    .line 140
    aget-object v9, v0, v6

    aget-wide v10, v9, v1

    add-double/2addr v4, v10

    .line 137
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 144
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_5

    move v3, v2

    .line 145
    :goto_3
    aget-object v6, v0, v2

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 146
    aget-object v6, v0, v1

    aget-wide v8, v6, v3

    div-double/2addr v8, v4

    aput-wide v8, v6, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 144
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    :cond_5
    return-object v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Math/Functions/Gaussian;->a:D

    return-wide v0
.end method

.method public setSigma(D)V
    .locals 3

    .prologue
    .line 67
    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Math/Functions/Gaussian;->a:D

    .line 68
    mul-double v0, p1, p1

    iput-wide v0, p0, LCatalano/Math/Functions/Gaussian;->b:D

    .line 69
    return-void
.end method
