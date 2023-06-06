.class public LCatalano/Math/Geometry/ConvexHullDefects;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, LCatalano/Math/Geometry/ConvexHullDefects;->a:D

    .line 43
    return-void
.end method

.method private a(Ljava/util/ArrayList;II)LCatalano/Math/Geometry/ConvexityDefect;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;II)",
            "LCatalano/Math/Geometry/ConvexityDefect;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 100
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    .line 102
    invoke-static {v0, v1}, LCatalano/Math/Geometry/Line;->FromPoints(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)LCatalano/Math/Geometry/Line;

    move-result-object v3

    .line 104
    const-wide/16 v4, 0x0

    .line 105
    const/4 v2, 0x0

    move v1, p2

    .line 107
    :goto_0
    if-ge v1, p3, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    invoke-virtual {v3, v0}, LCatalano/Math/Geometry/Line;->DistanceToPoint(LCatalano/Core/IntPoint;)F

    move-result v0

    float-to-double v6, v0

    .line 110
    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    move v0, v1

    move-wide v4, v6

    .line 107
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, LCatalano/Math/Geometry/ConvexityDefect;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCatalano/Core/IntPoint;

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, LCatalano/Math/Geometry/ConvexityDefect;-><init>(LCatalano/Core/IntPoint;IID)V

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public FindDefects(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Math/Geometry/ConvexityDefect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Point sequence size should have at least 4 points."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 77
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 78
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    add-int/lit8 v3, v0, 0x1

    aput v2, v4, v0

    move v0, v3

    .line 77
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Convex hull must have at least 3 points."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :goto_1
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 87
    aget v2, v4, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, v4, v3

    invoke-direct {p0, p1, v2, v3}, LCatalano/Math/Geometry/ConvexHullDefects;->a(Ljava/util/ArrayList;II)LCatalano/Math/Geometry/ConvexityDefect;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, LCatalano/Math/Geometry/ConvexityDefect;->getDepth()D

    move-result-wide v6

    iget-wide v8, p0, LCatalano/Math/Geometry/ConvexHullDefects;->a:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_4

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_5
    return-object v0
.end method

.method public getMinimumDepth()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, LCatalano/Math/Geometry/ConvexHullDefects;->a:D

    return-wide v0
.end method

.method public setMinimumDepth(D)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, LCatalano/Math/Geometry/ConvexHullDefects;->a:D

    .line 59
    return-void
.end method
