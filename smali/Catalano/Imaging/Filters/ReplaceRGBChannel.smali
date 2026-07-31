.class public LCatalano/Imaging/Filters/ReplaceRGBChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    .line 23
    iput-object p2, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->b:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    .line 24
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ReplaceRGBChannel needs one image grayscale and another RGB image"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 54
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "The image must be the same dimension"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :cond_3
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 61
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 62
    sget-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$1;->a:[I

    iget-object v2, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->b:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    invoke-virtual {v2}, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_4
    return-void

    :pswitch_0
    move v2, v1

    .line 64
    :goto_0
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 65
    :goto_1
    if-ge v0, v3, :cond_5

    .line 66
    iget-object v5, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    invoke-virtual {p1, v2, v0, v5}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 72
    :goto_2
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 73
    :goto_3
    if-ge v0, v3, :cond_6

    .line 74
    iget-object v5, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    invoke-virtual {p1, v2, v0, v5}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :pswitch_2
    move v2, v1

    .line 80
    :goto_4
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 81
    :goto_5
    if-ge v0, v3, :cond_7

    .line 82
    iget-object v5, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    invoke-virtual {p1, v2, v0, v5}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 80
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBand()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public getRGB()LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->b:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    return-object v0
.end method

.method public setBand(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    .line 32
    return-void
.end method

.method public setRGB(LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, LCatalano/Imaging/Filters/ReplaceRGBChannel;->b:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    .line 40
    return-void
.end method
