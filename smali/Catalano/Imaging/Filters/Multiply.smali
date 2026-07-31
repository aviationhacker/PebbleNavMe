.class public LCatalano/Imaging/Filters/Multiply;
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
    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 42
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 49
    iput-wide p1, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    .line 50
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 59
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    .line 60
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    .line 61
    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    .line 62
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 69
    iput-object p1, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 71
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 94
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 95
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 96
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v7

    .line 98
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 99
    :goto_1
    if-ge v1, v8, :cond_1

    .line 100
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Multiply;->e:D

    mul-double/2addr v4, v10

    double-to-int v0, v4

    .line 101
    if-le v0, v6, :cond_0

    move v0, v6

    .line 102
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 98
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v7

    .line 109
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 110
    :goto_3
    if-ge v2, v8, :cond_6

    .line 111
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Multiply;->b:D

    mul-double/2addr v4, v10

    double-to-int v3, v4

    .line 112
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    int-to-double v4, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/Multiply;->c:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    .line 113
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    int-to-double v10, v0

    iget-wide v12, p0, LCatalano/Imaging/Filters/Multiply;->d:D

    mul-double/2addr v10, v12

    double-to-int v5, v10

    .line 115
    if-le v3, v6, :cond_3

    move v3, v6

    .line 116
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 117
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 118
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 109
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_7
    return-void
.end method

.method private b(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 126
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 127
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 128
    mul-int v0, v8, v9

    .line 129
    iget-object v1, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 130
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    if-ne v0, v1, :cond_7

    move v2, v7

    .line 133
    :goto_0
    if-ge v2, v9, :cond_7

    move v1, v7

    .line 134
    :goto_1
    if-ge v1, v8, :cond_1

    .line 135
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    mul-int/2addr v0, v3

    .line 136
    if-le v0, v6, :cond_0

    move v0, v6

    .line 137
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 143
    if-ne v0, v1, :cond_7

    move v1, v7

    .line 146
    :goto_2
    if-ge v1, v9, :cond_7

    move v2, v7

    .line 147
    :goto_3
    if-ge v2, v8, :cond_6

    .line 148
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    mul-int/2addr v3, v0

    .line 149
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    iget-object v4, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    mul-int/2addr v4, v0

    .line 150
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    iget-object v5, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    mul-int/2addr v5, v0

    .line 152
    if-le v3, v6, :cond_3

    move v3, v6

    .line 153
    :cond_3
    if-le v4, v6, :cond_4

    move v4, v6

    .line 154
    :cond_4
    if-le v5, v6, :cond_5

    move v5, v6

    :cond_5
    move-object v0, p1

    .line 155
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 146
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    :cond_7
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Multiply;->b(LCatalano/Imaging/FastBitmap;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Multiply;->a(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, LCatalano/Imaging/Filters/Multiply;->a:LCatalano/Imaging/FastBitmap;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Multiply;->f:Z

    .line 80
    return-void
.end method
