.class public Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    .line 26
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    .line 29
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    .line 30
    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    return v0
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 44
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->initialized:Z

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Colors/Rescale..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RescaleFilter;->a:F

    mul-float/2addr v0, p1

    return v0
.end method
