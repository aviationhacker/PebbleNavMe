.class public LCatalano/Imaging/Filters/Threshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Threshold;->b:Z

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Threshold;->b:Z

    .line 50
    iput p1, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 51
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x80

    iput v0, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Threshold;->b:Z

    .line 59
    iput p1, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 60
    iput-boolean p2, p0, LCatalano/Imaging/Filters/Threshold;->b:Z

    .line 61
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Binarization works only with RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v2

    move v0, v1

    .line 86
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 87
    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    .line 88
    iget-boolean v4, p0, LCatalano/Imaging/Filters/Threshold;->b:Z

    if-nez v4, :cond_2

    .line 89
    iget v4, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    if-lt v3, v4, :cond_1

    .line 90
    aput v5, v2, v0

    .line 86
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    aput v1, v2, v0

    goto :goto_1

    .line 97
    :cond_2
    iget v4, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    if-ge v3, v4, :cond_3

    .line 98
    aput v1, v2, v0

    goto :goto_1

    .line 101
    :cond_3
    aput v5, v2, v0

    goto :goto_1

    .line 105
    :cond_4
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, LCatalano/Imaging/Filters/Threshold;->a:I

    .line 77
    return-void
.end method
