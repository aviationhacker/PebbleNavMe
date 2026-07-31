.class public LCatalano/Imaging/Filters/BinaryErosion;
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

    iput v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

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

    iput v1, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

    .line 60
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 61
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

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

    iput v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

    .line 52
    iput-object p1, p0, LCatalano/Imaging/Filters/BinaryErosion;->a:[[I

    .line 53
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 142
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private a([[I)I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 138
    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;I)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v5, LCatalano/Imaging/FastBitmap;

    invoke-direct {v5, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 83
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 87
    invoke-direct {p0, p2}, LCatalano/Imaging/Filters/BinaryErosion;->a(I)I

    move-result v8

    move v4, v1

    .line 88
    :goto_0
    if-ge v4, v7, :cond_4

    move v3, v1

    .line 89
    :goto_1
    if-ge v3, v6, :cond_3

    .line 90
    invoke-virtual {v5, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 91
    if-nez v0, :cond_2

    move v2, v1

    .line 92
    :goto_2
    if-ge v2, v8, :cond_2

    .line 93
    sub-int v0, v2, p2

    add-int v9, v4, v0

    move v0, v1

    .line 94
    :goto_3
    if-ge v0, v8, :cond_1

    .line 95
    sub-int v10, v0, p2

    add-int/2addr v10, v3

    .line 96
    if-ltz v9, :cond_0

    if-ge v9, v7, :cond_0

    if-ltz v10, :cond_0

    if-ge v10, v6, :cond_0

    .line 97
    invoke-virtual {p1, v9, v10, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 92
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 88
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 104
    :cond_4
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[I)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v5, LCatalano/Imaging/FastBitmap;

    invoke-direct {v5, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 110
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 111
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 115
    invoke-direct {p0, p2}, LCatalano/Imaging/Filters/BinaryErosion;->a([[I)I

    move-result v8

    move v4, v1

    .line 116
    :goto_0
    if-ge v4, v7, :cond_4

    move v3, v1

    .line 117
    :goto_1
    if-ge v3, v6, :cond_3

    .line 118
    invoke-virtual {v5, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 119
    if-nez v0, :cond_2

    move v0, v1

    .line 120
    :goto_2
    aget-object v2, p2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 121
    sub-int v2, v0, v8

    add-int v9, v4, v2

    move v2, v1

    .line 122
    :goto_3
    array-length v10, p2

    if-ge v2, v10, :cond_1

    .line 123
    sub-int v10, v2, v8

    add-int/2addr v10, v3

    .line 124
    if-ltz v9, :cond_0

    if-ge v9, v7, :cond_0

    if-ltz v10, :cond_0

    if-ge v10, v6, :cond_0

    .line 125
    aget-object v11, p2, v0

    aget v11, v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 126
    invoke-virtual {p1, v9, v10, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 122
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 116
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 134
    :cond_4
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 70
    iget v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->b:I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/BinaryErosion;->a(LCatalano/Imaging/FastBitmap;I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Filters/BinaryErosion;->a:[[I

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/BinaryErosion;->a(LCatalano/Imaging/FastBitmap;[[I)V

    goto :goto_0
.end method
