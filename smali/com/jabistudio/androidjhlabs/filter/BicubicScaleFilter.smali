.class public Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 33
    invoke-direct {p0, v0, v0}, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;-><init>(II)V

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->a:I

    .line 45
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->a:I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->b:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 51
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 52
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->a:I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->b:I

    const/4 v4, 0x1

    invoke-static {v8, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->a:I

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->a:I

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/BicubicScaleFilter;->b:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 55
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Distort/Bicubic Scale"

    return-object v0
.end method
