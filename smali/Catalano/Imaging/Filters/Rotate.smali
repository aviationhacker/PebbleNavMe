.class public LCatalano/Imaging/Filters/Rotate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Rotate$Algorithm;
    }
.end annotation


# instance fields
.field private a:D

.field private b:Z

.field private c:LCatalano/Imaging/Filters/Rotate$Algorithm;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-wide p1, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    .line 93
    sget-object v0, LCatalano/Imaging/Filters/Rotate$Algorithm;->NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Rotate$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    .line 94
    return-void
.end method

.method public constructor <init>(DLCatalano/Imaging/Filters/Rotate$Algorithm;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    .line 114
    iput-object p3, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    .line 115
    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-wide p1, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    .line 103
    iput-boolean p3, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    .line 104
    sget-object v0, LCatalano/Imaging/Filters/Rotate$Algorithm;->NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Rotate$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    .line 105
    return-void
.end method

.method public constructor <init>(DZLCatalano/Imaging/Filters/Rotate$Algorithm;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide p1, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    .line 125
    iput-boolean p3, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    .line 126
    iput-object p4, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    .line 127
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 4

    .prologue
    .line 132
    sget-object v0, LCatalano/Imaging/Filters/Rotate$1;->a:[I

    iget-object v1, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    invoke-virtual {v1}, LCatalano/Imaging/Filters/Rotate$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    new-instance v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;

    iget-wide v2, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    iget-boolean v1, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    invoke-direct {v0, v2, v3, v1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;-><init>(DZ)V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 146
    :goto_0
    return-void

    .line 134
    :pswitch_0
    new-instance v0, LCatalano/Imaging/Filters/RotateBilinear;

    iget-wide v2, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    iget-boolean v1, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    invoke-direct {v0, v2, v3, v1}, LCatalano/Imaging/Filters/RotateBilinear;-><init>(DZ)V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/RotateBilinear;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v0, LCatalano/Imaging/Filters/RotateBicubic;

    iget-wide v2, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    iget-boolean v1, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    invoke-direct {v0, v2, v3, v1}, LCatalano/Imaging/Filters/RotateBicubic;-><init>(DZ)V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/RotateBicubic;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 140
    :pswitch_2
    new-instance v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;

    iget-wide v2, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    iget-boolean v1, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    invoke-direct {v0, v2, v3, v1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;-><init>(DZ)V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAlgorithm()LCatalano/Imaging/Filters/Rotate$Algorithm;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    return-object v0
.end method

.method public getAngle()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    return-wide v0
.end method

.method public isKeepSize()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    return v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Filters/Rotate$Algorithm;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, LCatalano/Imaging/Filters/Rotate;->c:LCatalano/Imaging/Filters/Rotate$Algorithm;

    .line 85
    return-void
.end method

.method public setAngle(D)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, LCatalano/Imaging/Filters/Rotate;->a:D

    .line 53
    return-void
.end method

.method public setKeepSize(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Rotate;->b:Z

    .line 69
    return-void
.end method
