.class public LCatalano/Imaging/Filters/Subtract;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 47
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    .line 48
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    .line 59
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    .line 60
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    iput v0, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    .line 35
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 67
    iput-object p1, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 69
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v5

    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 95
    :goto_0
    if-ge v2, v5, :cond_5

    .line 96
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    iget v3, p0, LCatalano/Imaging/Filters/Subtract;->e:I

    sub-int/2addr v0, v3

    .line 97
    if-gez v0, :cond_0

    move v0, v1

    .line 98
    :cond_0
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 95
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v1

    .line 103
    :goto_1
    if-ge v4, v5, :cond_5

    .line 104
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    iget v2, p0, LCatalano/Imaging/Filters/Subtract;->b:I

    sub-int v3, v0, v2

    .line 105
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v0

    iget v2, p0, LCatalano/Imaging/Filters/Subtract;->c:I

    sub-int v2, v0, v2

    .line 106
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v0

    iget v6, p0, LCatalano/Imaging/Filters/Subtract;->d:I

    sub-int/2addr v0, v6

    .line 108
    if-gez v3, :cond_2

    move v3, v1

    .line 109
    :cond_2
    if-gez v2, :cond_3

    move v2, v1

    .line 110
    :cond_3
    if-gez v0, :cond_4

    move v0, v1

    .line 111
    :cond_4
    invoke-virtual {p1, v4, v3, v2, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 103
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 114
    :cond_5
    return-void
.end method

.method private b(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v5

    .line 119
    iget-object v0, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 120
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    if-ne v5, v0, :cond_5

    move v2, v1

    .line 123
    :goto_0
    if-ge v2, v5, :cond_5

    .line 124
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 125
    if-gez v0, :cond_0

    move v0, v1

    .line 126
    :cond_0
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    if-ne v5, v0, :cond_5

    move v4, v1

    .line 133
    :goto_1
    if-ge v4, v5, :cond_5

    .line 134
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    iget-object v2, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    sub-int v3, v0, v2

    .line 135
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v0

    iget-object v2, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    sub-int v2, v0, v2

    .line 136
    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v0

    iget-object v6, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    sub-int/2addr v0, v6

    .line 138
    if-gez v3, :cond_2

    move v3, v1

    .line 139
    :cond_2
    if-gez v2, :cond_3

    move v2, v1

    .line 140
    :cond_3
    if-gez v0, :cond_4

    move v0, v1

    .line 141
    :cond_4
    invoke-virtual {p1, v4, v3, v2, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 133
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 145
    :cond_5
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Subtract;->b(LCatalano/Imaging/FastBitmap;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/Subtract;->a(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, LCatalano/Imaging/Filters/Subtract;->a:LCatalano/Imaging/FastBitmap;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Subtract;->f:Z

    .line 78
    return-void
.end method
