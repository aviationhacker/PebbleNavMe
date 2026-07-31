.class public LCatalano/Math/Dissimilarities/DiceDissimilarity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/Distances/IDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LCatalano/Math/Distances/IDistance",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic Compute(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Dissimilarities/DiceDissimilarity;->Compute([I[I)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([I[I)D
    .locals 2

    .prologue
    .line 40
    invoke-static {p1, p2}, LCatalano/Math/Dissimilarities/Dissimilarity;->Dice([I[I)D

    move-result-wide v0

    return-wide v0
.end method
