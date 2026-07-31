.class public LCatalano/Imaging/Concurrent/Filters/Blur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
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

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Blur;->a:[[I

    .line 46
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
        0x5
        0x4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x5
        0x6
        0x5
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x4
        0x5
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 50
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Convolution;

    iget-object v1, p0, LCatalano/Imaging/Concurrent/Filters/Blur;->a:[[I

    invoke-direct {v0, v1}, LCatalano/Imaging/Concurrent/Filters/Convolution;-><init>([[I)V

    .line 51
    invoke-virtual {v0, p1}, LCatalano/Imaging/Concurrent/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 52
    return-void
.end method
