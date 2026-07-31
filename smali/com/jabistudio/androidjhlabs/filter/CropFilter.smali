.class public Lcom/jabistudio/androidjhlabs/filter/CropFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0, v1, v1}, Lcom/jabistudio/androidjhlabs/filter/CropFilter;-><init>(IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->a:I

    .line 50
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->b:I

    .line 51
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    .line 52
    iput p4, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    .line 53
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    mul-int/2addr v0, v2

    new-array v10, v0, [I

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, p1

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->a:I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->b:I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->a:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->b:I

    sub-int v5, p3, v5

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    move-object v3, v10

    move v4, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 135
    return-object v10
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->a:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->b:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->d:I

    .line 116
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->c:I

    .line 98
    return-void
.end method

.method public setX(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->a:I

    .line 62
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CropFilter;->b:I

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "Distort/Crop"

    return-object v0
.end method
