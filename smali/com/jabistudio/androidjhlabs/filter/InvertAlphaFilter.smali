.class public Lcom/jabistudio/androidjhlabs/filter/InvertAlphaFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/InvertAlphaFilter;->canFilterIndexColorModel:Z

    .line 26
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 1

    .prologue
    .line 29
    const/high16 v0, -0x1000000

    xor-int/2addr v0, p3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Alpha/Invert"

    return-object v0
.end method
