.class public LCatalano/Imaging/Filters/ExtractRGBChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IExtract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->b:LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;

    .line 62
    return-void
.end method


# virtual methods
.method public Extract(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/FastBitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Extract Channel works only with RGB images"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 91
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 93
    new-instance v0, LCatalano/Imaging/FastBitmap;

    sget-object v2, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v0, v3, v4, v2}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    iput-object v0, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    .line 95
    sget-object v0, LCatalano/Imaging/Filters/ExtractRGBChannel$1;->a:[I

    iget-object v2, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->b:LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;

    invoke-virtual {v2}, LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v1

    .line 97
    :goto_1
    if-ge v2, v4, :cond_0

    move v0, v1

    .line 98
    :goto_2
    if-ge v0, v3, :cond_2

    .line 99
    iget-object v5, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    move v2, v1

    .line 104
    :goto_3
    if-ge v2, v4, :cond_0

    move v0, v1

    .line 105
    :goto_4
    if-ge v0, v3, :cond_3

    .line 106
    iget-object v5, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 104
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_2
    move v2, v1

    .line 111
    :goto_5
    if-ge v2, v4, :cond_0

    move v0, v1

    .line 112
    :goto_6
    if-ge v0, v3, :cond_4

    .line 113
    iget-object v5, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 111
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRGB()LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->b:LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;

    return-object v0
.end method

.method public setRGB(LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractRGBChannel;->b:LCatalano/Imaging/Filters/ExtractRGBChannel$Channel;

    .line 78
    return-void
.end method
