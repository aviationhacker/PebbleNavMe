.class public Lcom/jabistudio/androidjhlabs/filter/MaskFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const v0, -0xff0001

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;->canFilterIndexColorModel:Z

    .line 32
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;->setMask(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;->a:I

    and-int/2addr v0, p3

    return v0
.end method

.method public getMask()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;->a:I

    return v0
.end method

.method public setMask(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MaskFilter;->a:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Mask"

    return-object v0
.end method
