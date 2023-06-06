.class public LCatalano/Imaging/Filters/Outline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private final a:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
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

    iput-object v0, p0, LCatalano/Imaging/Filters/Outline;->a:[[I

    .line 43
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 51
    new-instance v1, LCatalano/Imaging/Filters/BinaryErosion;

    iget-object v2, p0, LCatalano/Imaging/Filters/Outline;->a:[[I

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/BinaryErosion;-><init>([[I)V

    .line 52
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/BinaryErosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 54
    new-instance v1, LCatalano/Imaging/Filters/Subtract;

    invoke-direct {v1, v0}, LCatalano/Imaging/Filters/Subtract;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 55
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Subtract;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Outline only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
