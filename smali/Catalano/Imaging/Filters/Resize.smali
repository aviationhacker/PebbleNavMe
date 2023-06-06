.class public LCatalano/Imaging/Filters/Resize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Resize$Algorithm;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/Resize$Algorithm;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    .line 61
    iput p2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    .line 62
    sget-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Resize$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Resize;->a:LCatalano/Imaging/Filters/Resize$Algorithm;

    .line 63
    return-void
.end method

.method public constructor <init>(IILCatalano/Imaging/Filters/Resize$Algorithm;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    .line 73
    iput p2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    .line 74
    iput-object p3, p0, LCatalano/Imaging/Filters/Resize;->a:LCatalano/Imaging/Filters/Resize$Algorithm;

    .line 75
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 122
    sget-object v0, LCatalano/Imaging/Filters/Resize$1;->a:[I

    iget-object v1, p0, LCatalano/Imaging/Filters/Resize;->a:LCatalano/Imaging/Filters/Resize$Algorithm;

    invoke-virtual {v1}, LCatalano/Imaging/Filters/Resize$Algorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 124
    :pswitch_0
    new-instance v0, LCatalano/Imaging/Filters/ResizeBilinear;

    iget v1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    iget v2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/ResizeBilinear;-><init>(II)V

    .line 125
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/ResizeBilinear;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 128
    :pswitch_1
    new-instance v0, LCatalano/Imaging/Filters/ResizeBicubic;

    iget v1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    iget v2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/ResizeBicubic;-><init>(II)V

    .line 129
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/ResizeBicubic;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 132
    :pswitch_2
    new-instance v0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;

    iget v1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    iget v2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/ResizeNearestNeighbor;-><init>(II)V

    .line 133
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNewHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, LCatalano/Imaging/Filters/Resize;->c:I

    return v0
.end method

.method public getNewWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, LCatalano/Imaging/Filters/Resize;->b:I

    return v0
.end method

.method public setNewHeight(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, LCatalano/Imaging/Filters/Resize;->c:I

    .line 91
    return-void
.end method

.method public setNewSize(II)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    .line 116
    iput p2, p0, LCatalano/Imaging/Filters/Resize;->c:I

    .line 117
    return-void
.end method

.method public setNewWidth(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, LCatalano/Imaging/Filters/Resize;->b:I

    .line 107
    return-void
.end method
