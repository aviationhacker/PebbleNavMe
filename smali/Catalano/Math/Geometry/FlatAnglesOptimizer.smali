.class public LCatalano/Math/Geometry/FlatAnglesOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/Geometry/IShapeOptimizer;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    .line 51
    iput p1, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    .line 52
    return-void
.end method


# virtual methods
.method public OptimizeShape(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v8, :cond_1

    .line 78
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    :goto_0
    return-object v5

    .line 85
    :cond_1
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v0

    move v3, v0

    :goto_1
    if-ge v4, v6, :cond_3

    .line 91
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 95
    add-int/lit8 v0, v3, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    add-int/lit8 v1, v3, -0x3

    .line 96
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 95
    invoke-static {v0, v1, v2}, LCatalano/Math/Geometry/GeometryTools;->GetAngleBetweenVectors(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)F

    move-result v0

    .line 98
    iget v1, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    if-gt v3, v8, :cond_2

    add-int/lit8 v0, v6, -0x1

    if-ge v4, v0, :cond_5

    .line 102
    :cond_2
    add-int/lit8 v0, v3, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v3, -0x1

    .line 89
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_1

    .line 107
    :cond_3
    if-le v3, v8, :cond_0

    .line 109
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    add-int/lit8 v1, v3, -0x2

    .line 110
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 109
    invoke-static {v0, v1, v2}, LCatalano/Math/Geometry/GeometryTools;->GetAngleBetweenVectors(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)F

    move-result v0

    .line 112
    iget v1, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 114
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    add-int/lit8 v0, v3, -0x1

    move v1, v0

    .line 118
    :goto_3
    if-le v1, v8, :cond_0

    .line 121
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    add-int/lit8 v1, v1, -0x1

    .line 122
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCatalano/Core/IntPoint;

    .line 121
    invoke-static {v0, v1, v2}, LCatalano/Math/Geometry/GeometryTools;->GetAngleBetweenVectors(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)F

    move-result v0

    .line 124
    iget v1, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method public getMaxAngleToKeep()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    return v0
.end method

.method public setMaxAngleToKeep(F)V
    .locals 2

    .prologue
    .line 67
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, LCatalano/Math/Geometry/FlatAnglesOptimizer;->a:F

    .line 68
    return-void
.end method
