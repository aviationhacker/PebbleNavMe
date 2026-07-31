.class public Lcom/jabistudio/androidjhlabs/filter/GammaFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;-><init>(F)V

    .line 32
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p1, p1}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;-><init>(FFF)V

    .line 40
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->setGamma(FFF)V

    .line 50
    return-void
.end method

.method private a(F)[I
    .locals 13

    .prologue
    const/16 v12, 0x100

    const/16 v1, 0xff

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 101
    new-array v3, v12, [I

    .line 102
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v12, :cond_1

    .line 103
    int-to-double v4, v2

    div-double/2addr v4, v10

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, p1

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v10

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 104
    if-le v0, v1, :cond_0

    move v0, v1

    .line 106
    :cond_0
    aput v0, v3, v2

    .line 102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 108
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getGamma()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a:F

    return v0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a:F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->rTable:[I

    .line 87
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->b:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->rTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->gTable:[I

    .line 92
    :goto_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->c:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->rTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->bTable:[I

    .line 98
    :goto_1
    return-void

    .line 90
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->b:F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->gTable:[I

    goto :goto_0

    .line 94
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->c:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->gTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->bTable:[I

    goto :goto_1

    .line 97
    :cond_2
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->c:F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->bTable:[I

    goto :goto_1
.end method

.method public setGamma(F)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p1, p1}, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->setGamma(FFF)V

    .line 73
    return-void
.end method

.method public setGamma(FFF)V
    .locals 1

    .prologue
    .line 60
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->a:F

    .line 61
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->b:F

    .line 62
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->c:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GammaFilter;->initialized:Z

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "Colors/Gamma..."

    return-object v0
.end method
