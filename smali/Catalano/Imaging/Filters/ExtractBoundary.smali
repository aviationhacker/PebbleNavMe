.class public LCatalano/Imaging/Filters/ExtractBoundary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;->Erosion:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/ExtractBoundary;->a:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    .line 54
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;->Erosion:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/ExtractBoundary;->a:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    .line 61
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractBoundary;->a:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    .line 62
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v3, LCatalano/Imaging/FastBitmap;

    invoke-direct {v3, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 89
    iget-object v0, p0, LCatalano/Imaging/Filters/ExtractBoundary;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, v3}, LCatalano/Imaging/Filters/ExtractBoundary;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 93
    :cond_0
    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 94
    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Filters/ExtractBoundary;->b:Ljava/util/ArrayList;

    move v2, v1

    .line 97
    :goto_0
    if-ge v2, v5, :cond_3

    move v0, v1

    .line 98
    :goto_1
    if-ge v0, v4, :cond_2

    .line 99
    invoke-virtual {v3, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1

    iget-object v6, p0, LCatalano/Imaging/Filters/ExtractBoundary;->b:Ljava/util/ArrayList;

    new-instance v7, LCatalano/Core/IntPoint;

    invoke-direct {v7, v2, v0}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, LCatalano/Imaging/Filters/ExtractBoundary;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 68
    iget-object v1, p0, LCatalano/Imaging/Filters/ExtractBoundary;->a:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    sget-object v2, LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;->Erosion:LCatalano/Imaging/Filters/ExtractBoundary$Algorithm;

    if-ne v1, v2, :cond_0

    .line 69
    new-instance v1, LCatalano/Imaging/Filters/BinaryErosion;

    invoke-direct {v1}, LCatalano/Imaging/Filters/BinaryErosion;-><init>()V

    .line 70
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/BinaryErosion;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 77
    :goto_0
    new-instance v1, LCatalano/Imaging/Filters/Difference;

    invoke-direct {v1, p1}, LCatalano/Imaging/Filters/Difference;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 78
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/Difference;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 79
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 80
    return-void

    .line 73
    :cond_0
    new-instance v1, LCatalano/Imaging/Filters/BinaryDilatation;

    invoke-direct {v1}, LCatalano/Imaging/Filters/BinaryDilatation;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, LCatalano/Imaging/Filters/BinaryDilatation;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0
.end method
