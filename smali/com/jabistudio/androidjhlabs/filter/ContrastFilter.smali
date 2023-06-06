.class public Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 25
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->a:F

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->b:F

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->a:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->b:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 1

    .prologue
    .line 42
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->a:F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->initialized:Z

    .line 44
    return-void
.end method

.method public setContrast(F)V
    .locals 1

    .prologue
    .line 63
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->b:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->initialized:Z

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "Colors/Contrast..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->a:F

    mul-float/2addr v0, p1

    .line 30
    sub-float/2addr v0, v2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/ContrastFilter;->b:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 31
    return v0
.end method
