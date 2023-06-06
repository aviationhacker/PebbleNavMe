.class public LCatalano/Imaging/Corners/FeaturePoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "LCatalano/Imaging/Corners/FeaturePoint;",
        ">;"
    }
.end annotation


# instance fields
.field public score:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 59
    iput p2, p0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 60
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    .line 70
    iput p2, p0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    .line 71
    iput p3, p0, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    .line 72
    return-void
.end method


# virtual methods
.method public compareTo(LCatalano/Imaging/Corners/FeaturePoint;)I
    .locals 2

    .prologue
    .line 84
    iget v0, p1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    iget v1, p0, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_0
    iget v0, p1, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    iget v1, p0, LCatalano/Imaging/Corners/FeaturePoint;->score:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, LCatalano/Imaging/Corners/FeaturePoint;

    invoke-virtual {p0, p1}, LCatalano/Imaging/Corners/FeaturePoint;->compareTo(LCatalano/Imaging/Corners/FeaturePoint;)I

    move-result v0

    return v0
.end method

.method public toIntPoint()LCatalano/Core/IntPoint;
    .locals 3

    .prologue
    .line 79
    new-instance v0, LCatalano/Core/IntPoint;

    iget v1, p0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    iget v2, p0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    return-object v0
.end method
