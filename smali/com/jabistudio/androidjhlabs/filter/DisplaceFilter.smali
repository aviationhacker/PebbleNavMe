.class public Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:[I

.field private c:[I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->a:F

    .line 30
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 12

    .prologue
    .line 52
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    .line 53
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    .line 55
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    mul-int/2addr v0, v1

    new-array v4, v0, [I

    .line 58
    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_0

    .line 59
    aget v1, p1, v0

    aput v1, v4, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->b:[I

    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->c:[I

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    if-ge v0, v2, :cond_2

    .line 66
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    if-ge v2, v3, :cond_1

    .line 67
    aget v3, v4, v1

    .line 68
    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 69
    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 70
    and-int/lit16 v3, v3, 0xff

    .line 71
    add-int/2addr v5, v6

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x8

    aput v3, v4, v1

    .line 72
    add-int/lit8 v3, v1, 0x1

    .line 66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    if-ge v0, v2, :cond_4

    .line 78
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    rem-int/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    mul-int v5, v2, v3

    .line 79
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    mul-int v6, v0, v2

    .line 80
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    rem-int/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    mul-int v7, v2, v3

    .line 81
    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    if-ge v2, v3, :cond_3

    .line 82
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    rem-int/2addr v3, v8

    .line 84
    add-int/lit8 v8, v2, 0x1

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    rem-int/2addr v8, v9

    .line 85
    iget-object v9, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->b:[I

    add-int v10, v3, v5

    aget v10, v4, v10

    add-int v11, v3, v6

    aget v11, v4, v11

    add-int/2addr v10, v11

    add-int v11, v3, v7

    aget v11, v4, v11

    add-int/2addr v10, v11

    add-int v11, v8, v5

    aget v11, v4, v11

    sub-int/2addr v10, v11

    add-int v11, v8, v6

    aget v11, v4, v11

    sub-int/2addr v10, v11

    add-int v11, v8, v7

    aget v11, v4, v11

    sub-int/2addr v10, v11

    aput v10, v9, v1

    .line 86
    iget-object v9, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->c:[I

    add-int v10, v3, v7

    aget v10, v4, v10

    add-int v11, v2, v7

    aget v11, v4, v11

    add-int/2addr v10, v11

    add-int v11, v8, v7

    aget v11, v4, v11

    add-int/2addr v10, v11

    add-int/2addr v3, v5

    aget v3, v4, v3

    sub-int v3, v10, v3

    add-int v10, v2, v5

    aget v10, v4, v10

    sub-int/2addr v3, v10

    add-int/2addr v8, v5

    aget v8, v4, v8

    sub-int/2addr v3, v8

    aput v3, v9, v1

    .line 87
    add-int/lit8 v3, v1, 0x1

    .line 81
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_4

    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 91
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->c:[I

    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->b:[I

    .line 93
    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->a:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->a:F

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "Distort/Displace..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 5

    .prologue
    .line 97
    int-to-float v0, p1

    .line 98
    int-to-float v0, p2

    .line 99
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->e:I

    rem-int v0, p2, v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->d:I

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    .line 100
    const/4 v1, 0x0

    int-to-float v2, p1

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->a:F

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->b:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 101
    const/4 v1, 0x1

    int-to-float v2, p2

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->a:F

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/DisplaceFilter;->c:[I

    aget v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    aput v0, p3, v1

    .line 102
    return-void
.end method
