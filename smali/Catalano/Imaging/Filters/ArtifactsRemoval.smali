.class public LCatalano/Imaging/Filters/ArtifactsRemoval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/ArtifactsRemoval;->a:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/ArtifactsRemoval;->a:I

    .line 47
    iput p1, p0, LCatalano/Imaging/Filters/ArtifactsRemoval;->a:I

    .line 48
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 17

    .prologue
    .line 53
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    new-instance v9, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 55
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 56
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 57
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/ArtifactsRemoval;->a:I

    div-int/lit8 v12, v2, 0x2

    .line 59
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v11, :cond_5

    .line 60
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v10, :cond_3

    .line 62
    const-wide/16 v4, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    sub-int v2, v8, v12

    move v6, v2

    :goto_2
    add-int v2, v8, v12

    if-ge v6, v2, :cond_2

    .line 65
    sub-int v2, v7, v12

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_3
    add-int v13, v7, v12

    if-ge v3, v13, :cond_1

    .line 67
    if-ltz v6, :cond_0

    if-ltz v3, :cond_0

    if-ge v6, v11, :cond_0

    if-ge v3, v10, :cond_0

    .line 68
    invoke-virtual {v9, v6, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    int-to-double v14, v13

    add-double/2addr v4, v14

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 64
    :cond_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_2

    .line 73
    :cond_2
    int-to-double v2, v3

    div-double v2, v4, v2

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-double v4, v4

    sub-double v2, v4, v2

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 60
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 59
    :cond_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 79
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Artifacts Removal only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_5
    return-void
.end method
