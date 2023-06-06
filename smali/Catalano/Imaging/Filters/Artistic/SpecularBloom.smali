.class public LCatalano/Imaging/Filters/Artistic/SpecularBloom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    iput-object v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    .line 40
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    .line 79
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    iput-object v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    .line 40
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    .line 87
    iput p1, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    .line 88
    iput p2, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    .line 90
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    iput-object v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    .line 40
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    .line 41
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 42
    iput-boolean v1, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    .line 98
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    .line 99
    iput p2, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 100
    iput-boolean v1, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    .line 101
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 4

    .prologue
    .line 106
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 107
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    .line 109
    sget-object v1, LCatalano/Imaging/Filters/Artistic/SpecularBloom$1;->a:[I

    iget-object v2, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->a:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    invoke-virtual {v2}, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    iget-boolean v1, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->d:Z

    if-nez v1, :cond_0

    .line 125
    new-instance v1, LCatalano/Imaging/Filters/Threshold;

    iget v2, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Threshold;-><init>(I)V

    .line 126
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 129
    :cond_0
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->toRGB()V

    .line 131
    new-instance v1, LCatalano/Imaging/Filters/GaussianBoxBlur;

    iget v2, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, LCatalano/Imaging/Filters/GaussianBoxBlur;-><init>(D)V

    .line 132
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/GaussianBoxBlur;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 134
    new-instance v1, LCatalano/Imaging/Filters/Artistic/Blend;

    sget-object v2, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->Screen:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-direct {v1, v0, v2}, LCatalano/Imaging/Filters/Artistic/Blend;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V

    .line 135
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Artistic/Blend;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 137
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 139
    return-void

    .line 111
    :pswitch_0
    new-instance v1, LCatalano/Imaging/Filters/OtsuThreshold;

    invoke-direct {v1}, LCatalano/Imaging/Filters/OtsuThreshold;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/OtsuThreshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 115
    :pswitch_1
    new-instance v1, LCatalano/Imaging/Filters/RosinThreshold;

    invoke-direct {v1}, LCatalano/Imaging/Filters/RosinThreshold;-><init>()V

    .line 116
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/RosinThreshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 119
    :pswitch_2
    new-instance v1, LCatalano/Imaging/Filters/SISThreshold;

    invoke-direct {v1}, LCatalano/Imaging/Filters/SISThreshold;-><init>()V

    .line 120
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/SISThreshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRadius()D
    .locals 2

    .prologue
    .line 65
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->c:I

    .line 74
    return-void
.end method

.method public setThreshold(I)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x1

    const/16 v1, 0xff

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/SpecularBloom;->b:I

    .line 58
    return-void
.end method
