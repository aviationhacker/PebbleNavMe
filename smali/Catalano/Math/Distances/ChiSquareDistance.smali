.class public LCatalano/Math/Distances/ChiSquareDistance;
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

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/ChiSquareDistance;->Compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([D[D)D
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 40
    aget-wide v6, p1, v0

    aget-wide v8, p2, v0

    add-double/2addr v6, v8

    .line 41
    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 42
    aget-wide v8, p1, v0

    aget-wide v10, p2, v0

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v6, v8, v6

    add-double/2addr v2, v6

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method
