.class public LCatalano/Imaging/Filters/Division;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 40
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 47
    iput-wide p1, p0, LCatalano/Imaging/Filters/Division;->e:D

    .line 48
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->b:D

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->c:D

    .line 59
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->d:D

    .line 60
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Division;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 67
    iput-object p1, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 69
    return-void
.end method


# virtual methods
.method public ApplyInPlaceImage(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 132
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 133
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 134
    mul-int v0, v8, v9

    .line 135
    iget-object v1, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 136
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    if-ne v0, v1, :cond_7

    move v2, v7

    .line 139
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 140
    :goto_1
    if-ge v1, v8, :cond_1

    .line 141
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    div-int/2addr v0, v3

    .line 142
    if-le v0, v6, :cond_0

    move v0, v6

    .line 143
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 139
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    if-ne v0, v1, :cond_7

    move v1, v7

    .line 152
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 153
    :goto_3
    if-ge v2, v8, :cond_6

    .line 154
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    div-int v3, v0, v3

    .line 155
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    iget-object v4, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    div-int v4, v0, v4

    .line 156
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    iget-object v5, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    div-int v5, v0, v5

    .line 158
    if-le v3, v6, :cond_3

    move v3, v6

    .line 159
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 160
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 161
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 152
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    :cond_7
    return-void
.end method

.method public ApplyInPlaceValues(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 96
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 97
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 98
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v7

    .line 100
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 101
    :goto_1
    if-ge v1, v8, :cond_1

    .line 102
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Division;->e:D

    div-double/2addr v4, v10

    double-to-int v0, v4

    .line 103
    if-le v0, v6, :cond_0

    move v0, v6

    .line 104
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v7

    .line 111
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 112
    :goto_3
    if-ge v2, v8, :cond_6

    .line 113
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Division;->b:D

    div-double/2addr v4, v10

    double-to-int v3, v4

    .line 114
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Division;->c:D

    div-double/2addr v4, v10

    double-to-int v4, v4

    .line 115
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    int-to-double v10, v0

    iget-wide v12, p0, LCatalano/Imaging/Filters/Division;->d:D

    div-double/2addr v10, v12

    double-to-int v5, v10

    .line 117
    if-le v3, v6, :cond_3

    move v3, v6

    .line 118
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 119
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 120
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 111
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_7
    return-void
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/Division;->ApplyInPlaceImage(LCatalano/Imaging/FastBitmap;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/Division;->ApplyInPlaceValues(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, LCatalano/Imaging/Filters/Division;->a:LCatalano/Imaging/FastBitmap;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Division;->f:Z

    .line 78
    return-void
.end method
