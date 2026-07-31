.class public LCatalano/Math/Distances/BrayCurtisDistance;
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

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/BrayCurtisDistance;->Compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([D[D)D
    .locals 2

    .prologue
    .line 38
    invoke-static {p1, p2}, LCatalano/Math/Distances/Distance;->BrayCurtis([D[D)D

    move-result-wide v0

    return-wide v0
.end method
