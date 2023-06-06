.class public LCatalano/Math/PaddingMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:D

.field private d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, LCatalano/Math/PaddingMatrix;-><init>(IID)V

    .line 43
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, LCatalano/Math/PaddingMatrix;->a:I

    .line 53
    iput p2, p0, LCatalano/Math/PaddingMatrix;->b:I

    .line 54
    iput-wide p3, p0, LCatalano/Math/PaddingMatrix;->c:D

    .line 55
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, LCatalano/Math/PaddingMatrix;->a:I

    .line 65
    iput p2, p0, LCatalano/Math/PaddingMatrix;->b:I

    .line 66
    iput-boolean p3, p0, LCatalano/Math/PaddingMatrix;->d:Z

    .line 67
    return-void
.end method


# virtual methods
.method public Create([[D)[[D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, LCatalano/Math/PaddingMatrix;->d:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 78
    array-length v0, p1

    iget v2, p0, LCatalano/Math/PaddingMatrix;->a:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    aget-object v2, p1, v1

    array-length v2, v2

    iget v3, p0, LCatalano/Math/PaddingMatrix;->b:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-wide v4, p0, LCatalano/Math/PaddingMatrix;->c:D

    invoke-static {v0, v2, v4, v5}, LCatalano/Math/Matrix;->CreateMatrix2D(IID)[[D

    move-result-object v6

    move v0, v1

    .line 81
    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_3

    .line 82
    iget v2, p0, LCatalano/Math/PaddingMatrix;->a:I

    sub-int v4, v0, v2

    move v2, v1

    .line 83
    :goto_1
    aget-object v3, v6, v1

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 84
    iget v3, p0, LCatalano/Math/PaddingMatrix;->b:I

    sub-int v5, v2, v3

    .line 85
    if-ltz v4, :cond_0

    array-length v3, p1

    if-ge v4, v3, :cond_0

    if-ltz v5, :cond_0

    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v5, v3, :cond_0

    .line 86
    aget-object v3, v6, v0

    aget-object v7, p1, v4

    aget-wide v8, v7, v5

    aput-wide v8, v3, v2

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    :cond_0
    if-gez v4, :cond_8

    move v3, v1

    .line 93
    :goto_3
    array-length v7, p1

    if-lt v3, v7, :cond_7

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v7, v3

    .line 95
    :goto_4
    if-gez v5, :cond_6

    move v3, v1

    .line 96
    :goto_5
    aget-object v5, p1, v1

    array-length v5, v5

    if-lt v3, v5, :cond_1

    aget-object v3, p1, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 98
    :cond_1
    aget-object v5, v6, v0

    aget-object v7, p1, v7

    aget-wide v8, v7, v3

    aput-wide v8, v5, v2

    goto :goto_2

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v6

    .line 109
    :goto_6
    return-object v0

    .line 105
    :cond_4
    array-length v0, p1

    iget v2, p0, LCatalano/Math/PaddingMatrix;->a:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    aget-object v2, p1, v1

    array-length v2, v2

    iget v3, p0, LCatalano/Math/PaddingMatrix;->b:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-wide v4, p0, LCatalano/Math/PaddingMatrix;->c:D

    invoke-static {v0, v2, v4, v5}, LCatalano/Math/Matrix;->CreateMatrix2D(IID)[[D

    move-result-object v2

    move v0, v1

    .line 106
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_5

    .line 107
    aget-object v3, p1, v0

    iget v4, p0, LCatalano/Math/PaddingMatrix;->a:I

    add-int/2addr v4, v0

    aget-object v4, v2, v4

    iget v5, p0, LCatalano/Math/PaddingMatrix;->b:I

    aget-object v6, p1, v1

    array-length v6, v6

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    move-object v0, v2

    .line 109
    goto :goto_6

    :cond_6
    move v3, v5

    goto :goto_5

    :cond_7
    move v7, v3

    goto :goto_4

    :cond_8
    move v3, v4

    goto :goto_3
.end method
