.class public LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

.field private b:Z


# direct methods
.method public constructor <init>(LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    .line 99
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

    .line 100
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;Z)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    .line 108
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

    .line 109
    iput-boolean p2, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    .line 110
    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)LCatalano/Statistics/Histogram;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    const/16 v0, 0xff

    .line 120
    iget-boolean v3, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    if-eqz v3, :cond_0

    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Maximum(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 122
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    .line 123
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 125
    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 127
    sget-object v0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$1;->a:[I

    iget-object v6, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

    invoke-virtual {v6}, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_1
    new-instance v0, LCatalano/Statistics/Histogram;

    invoke-direct {v0, v5}, LCatalano/Statistics/Histogram;-><init>([I)V

    return-object v0

    .line 129
    :cond_2
    add-int/lit8 v1, v1, 0x1

    :pswitch_0
    if-ge v1, v3, :cond_1

    move v0, v2

    .line 130
    :goto_0
    if-ge v0, v4, :cond_2

    .line 131
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 132
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 133
    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    :pswitch_1
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 140
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v0, v6, :cond_3

    .line 141
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 142
    add-int/lit8 v7, v2, -0x1

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {p1, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 143
    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_4
    add-int/lit8 v2, v2, 0x1

    :pswitch_2
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 150
    :goto_2
    if-ge v0, v4, :cond_4

    .line 151
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 152
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 153
    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :pswitch_3
    if-ge v2, v3, :cond_1

    .line 160
    add-int/lit8 v6, v4, -0x1

    move v0, v1

    .line 161
    :goto_3
    add-int/lit8 v7, v4, -0x1

    if-ge v0, v7, :cond_5

    .line 162
    sub-int v7, v6, v0

    invoke-virtual {p1, v2, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 163
    add-int/lit8 v8, v2, -0x1

    add-int/lit8 v9, v6, -0x1

    sub-int/2addr v9, v0

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 164
    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDegree()LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

    return-object v0
.end method

.method public isAutoGray()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    return v0
.end method

.method public setAutoGray(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->b:Z

    .line 76
    return-void
.end method

.method public setDegree(LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelDifferenceMethod;->a:LCatalano/Imaging/Texture/GrayLevelDifferenceMethod$Degree;

    .line 92
    return-void
.end method
