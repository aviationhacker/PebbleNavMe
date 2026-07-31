.class public LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IExtract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;->a:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    .line 67
    return-void
.end method


# virtual methods
.method public Extract(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/FastBitmap;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 89
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 91
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Extract Channel works only with RGB images"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_0
    new-instance v2, LCatalano/Imaging/FastBitmap;

    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v2, v6, v7, v0}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 102
    sget-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$1;->a:[I

    iget-object v3, p0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;->a:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    invoke-virtual {v3}, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 145
    :goto_0
    return-object v0

    :pswitch_0
    move v5, v4

    .line 104
    :goto_1
    if-ge v5, v7, :cond_3

    move v3, v4

    .line 105
    :goto_2
    if-ge v3, v6, :cond_2

    .line 106
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v8

    .line 107
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    .line 108
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    .line 109
    add-int/2addr v0, v8

    add-int/2addr v0, v9

    .line 110
    if-nez v0, :cond_1

    move v0, v1

    .line 111
    :cond_1
    mul-int/lit16 v8, v8, 0xff

    div-int v0, v8, v0

    .line 112
    invoke-virtual {v2, v5, v3, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 105
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 104
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 115
    goto :goto_0

    :pswitch_1
    move v5, v4

    .line 118
    :goto_3
    if-ge v5, v7, :cond_6

    move v3, v4

    .line 119
    :goto_4
    if-ge v3, v6, :cond_5

    .line 120
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 121
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    .line 122
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    .line 123
    add-int/2addr v0, v8

    add-int/2addr v0, v9

    .line 124
    if-nez v0, :cond_4

    move v0, v1

    .line 125
    :cond_4
    mul-int/lit16 v8, v8, 0xff

    div-int v0, v8, v0

    .line 126
    invoke-virtual {v2, v5, v3, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 119
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 118
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 129
    goto :goto_0

    :pswitch_2
    move v5, v4

    .line 132
    :goto_5
    if-ge v5, v7, :cond_9

    move v3, v4

    .line 133
    :goto_6
    if-ge v3, v6, :cond_8

    .line 134
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    .line 135
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    .line 136
    invoke-virtual {p1, v5, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    .line 137
    add-int/2addr v0, v8

    add-int/2addr v0, v9

    .line 138
    if-nez v0, :cond_7

    move v0, v1

    .line 139
    :cond_7
    mul-int/lit16 v8, v9, 0xff

    div-int v0, v8, v0

    .line 140
    invoke-virtual {v2, v5, v3, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 133
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 132
    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_9
    move-object v0, v2

    .line 143
    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRGB()LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;->a:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    return-object v0
.end method

.method public setRGB(LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;->a:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    .line 83
    return-void
.end method
