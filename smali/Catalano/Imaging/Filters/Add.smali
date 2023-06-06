.class public LCatalano/Imaging/Filters/Add;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Add;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    .line 42
    iput p1, p0, LCatalano/Imaging/Filters/Add;->e:I

    .line 43
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Add;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Add;->b:I

    .line 53
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Add;->c:I

    .line 54
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Add;->d:I

    .line 55
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Add;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Add;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    .line 62
    iput-object p1, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    .line 64
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 87
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 88
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 89
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v7

    .line 91
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 92
    :goto_1
    if-ge v1, v8, :cond_1

    .line 93
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    iget v3, p0, LCatalano/Imaging/Filters/Add;->e:I

    add-int/2addr v0, v3

    .line 94
    if-le v0, v6, :cond_0

    move v0, v6

    .line 95
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v7

    .line 102
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 103
    :goto_3
    if-ge v2, v8, :cond_6

    .line 104
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    iget v3, p0, LCatalano/Imaging/Filters/Add;->b:I

    add-int/2addr v3, v0

    .line 105
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    iget v4, p0, LCatalano/Imaging/Filters/Add;->c:I

    add-int/2addr v4, v0

    .line 106
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    iget v5, p0, LCatalano/Imaging/Filters/Add;->d:I

    add-int/2addr v5, v0

    .line 108
    if-le v3, v6, :cond_3

    move v3, v6

    .line 109
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 110
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 115
    :cond_7
    return-void
.end method

.method private b(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 119
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 120
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 121
    mul-int v0, v8, v9

    .line 122
    iget-object v1, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 123
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    if-ne v0, v1, :cond_7

    move v2, v7

    .line 126
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 127
    :goto_1
    if-ge v1, v8, :cond_1

    .line 128
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 129
    if-le v0, v6, :cond_0

    move v0, v6

    .line 130
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    if-ne v0, v1, :cond_7

    move v1, v7

    .line 139
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 140
    :goto_3
    if-ge v2, v8, :cond_6

    .line 141
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    add-int/2addr v3, v0

    .line 142
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    iget-object v4, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    add-int/2addr v4, v0

    .line 143
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    iget-object v5, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    add-int/2addr v5, v0

    .line 145
    if-le v3, v6, :cond_3

    move v3, v6

    .line 146
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 147
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 148
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 139
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :cond_7
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Add;->b(LCatalano/Imaging/FastBitmap;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Add;->a(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, LCatalano/Imaging/Filters/Add;->a:LCatalano/Imaging/FastBitmap;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Add;->f:Z

    .line 73
    return-void
.end method
