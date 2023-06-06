.class public Lcom/jabistudio/androidjhlabs/filter/GainFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->a:F

    .line 27
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->b:F

    return-void
.end method


# virtual methods
.method public getBias()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->b:F

    return v0
.end method

.method public getGain()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->a:F

    return v0
.end method

.method public setBias(F)V
    .locals 1

    .prologue
    .line 64
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->b:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->initialized:Z

    .line 66
    return-void
.end method

.method public setGain(F)V
    .locals 1

    .prologue
    .line 43
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->a:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->initialized:Z

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Colors/Gain..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->a:F

    invoke-static {p1, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->gain(FF)F

    move-result v0

    .line 31
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/GainFilter;->b:F

    invoke-static {v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->bias(FF)F

    move-result v0

    .line 32
    return v0
.end method
