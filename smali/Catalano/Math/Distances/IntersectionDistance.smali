.class public LCatalano/Math/Distances/IntersectionDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/Distances/IDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LCatalano/Math/Distances/IDistance",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic Compute(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 29
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/IntersectionDistance;->Compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([D[D)D
    .locals 8

    .prologue
    .line 38
    const-wide/16 v2, 0x0

    .line 39
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 40
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-wide v2
.end method
