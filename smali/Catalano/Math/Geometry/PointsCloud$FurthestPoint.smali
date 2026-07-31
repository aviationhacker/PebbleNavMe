.class public LCatalano/Math/Geometry/PointsCloud$FurthestPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Math/Geometry/PointsCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FurthestPoint"
.end annotation


# instance fields
.field public distance:F

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->x:I

    .line 451
    iput p2, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->y:I

    .line 452
    iput p3, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 453
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;)V
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iput v0, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->x:I

    .line 457
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    iput v0, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->y:I

    .line 458
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntPoint;F)V
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iput v0, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->x:I

    .line 462
    iget v0, p1, LCatalano/Core/IntPoint;->y:I

    iput v0, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->y:I

    .line 463
    iput p2, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->distance:F

    .line 464
    return-void
.end method


# virtual methods
.method public toIntPoint()LCatalano/Core/IntPoint;
    .locals 3

    .prologue
    .line 467
    new-instance v0, LCatalano/Core/IntPoint;

    iget v1, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->x:I

    iget v2, p0, LCatalano/Math/Geometry/PointsCloud$FurthestPoint;->y:I

    invoke-direct {v0, v1, v2}, LCatalano/Core/IntPoint;-><init>(II)V

    return-object v0
.end method
