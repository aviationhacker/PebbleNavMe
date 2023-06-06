.class public LCatalano/Imaging/Filters/Sharpen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/Sharpen;->a:[[I

    .line 44
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x5
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, LCatalano/Imaging/Filters/Convolution;

    iget-object v1, p0, LCatalano/Imaging/Filters/Sharpen;->a:[[I

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Convolution;-><init>([[I)V

    .line 49
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 50
    return-void
.end method
