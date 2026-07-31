.class public Lcom/jabistudio/androidjhlabs/filter/SolarizeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "Colors/Solarize"

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sub-float v0, p1, v1

    mul-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    sub-float v0, v1, p1

    mul-float/2addr v0, v2

    goto :goto_0
.end method
