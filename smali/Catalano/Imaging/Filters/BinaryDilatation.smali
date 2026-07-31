.class public LCatalano/Imaging/Filters/BinaryDilatation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    .line 60
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 61
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    .line 62
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    .line 52
    iput-object p1, p0, LCatalano/Imaging/Filters/BinaryDilatation;->a:[[I

    .line 53
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 138
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private a([[I)I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 134
    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/4 v1, 0x0

    .line 76
    new-instance v5, LCatalano/Imaging/FastBitmap;

    invoke-direct {v5, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 78
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 79
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 83
    invoke-direct {p0, p2}, LCatalano/Imaging/Filters/BinaryDilatation;->a(I)I

    move-result v8

    move v4, v1

    .line 84
    :goto_0
    if-ge v4, v7, :cond_4

    move v3, v1

    .line 85
    :goto_1
    if-ge v3, v6, :cond_3

    .line 86
    invoke-virtual {v5, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 87
    if-ne v0, v11, :cond_2

    move v2, v1

    .line 88
    :goto_2
    if-ge v2, v8, :cond_2

    .line 89
    sub-int v0, v2, p2

    add-int v9, v4, v0

    move v0, v1

    .line 90
    :goto_3
    if-ge v0, v8, :cond_1

    .line 91
    sub-int v10, v0, p2

    add-int/2addr v10, v3

    .line 92
    if-ltz v9, :cond_0

    if-ge v9, v7, :cond_0

    if-ltz v10, :cond_0

    if-ge v10, v6, :cond_0

    .line 93
    invoke-virtual {p1, v9, v10, v11}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 85
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 84
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 100
    :cond_4
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[I)V
    .locals 12

    .prologue
    .line 104
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 107
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 111
    invoke-direct {p0, p2}, LCatalano/Imaging/Filters/BinaryDilatation;->a([[I)I

    move-result v7

    .line 112
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_4

    .line 113
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    .line 114
    invoke-virtual {v4, v3, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 115
    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 116
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    aget-object v1, p2, v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 117
    sub-int v1, v0, v7

    add-int v8, v3, v1

    .line 118
    const/4 v1, 0x0

    :goto_3
    array-length v9, p2

    if-ge v1, v9, :cond_1

    .line 119
    sub-int v9, v1, v7

    add-int/2addr v9, v2

    .line 120
    if-ltz v8, :cond_0

    if-ge v8, v6, :cond_0

    if-ltz v9, :cond_0

    if-ge v9, v5, :cond_0

    .line 121
    aget-object v10, p2, v0

    aget v10, v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 122
    const/16 v10, 0xff

    invoke-virtual {p1, v8, v9, v10}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 118
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 112
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 130
    :cond_4
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->b:I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/BinaryDilatation;->a(LCatalano/Imaging/FastBitmap;I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/BinaryDilatation;->a:[[I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/BinaryDilatation;->a(LCatalano/Imaging/FastBitmap;[[I)V

    goto :goto_0
.end method
