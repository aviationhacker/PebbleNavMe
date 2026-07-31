.class public LCatalano/Math/Distances/MinkowskiDistance;
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


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Math/Distances/MinkowskiDistance;->a:D

    .line 57
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Math/Distances/MinkowskiDistance;->a:D

    .line 64
    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/MinkowskiDistance;->setOrder(D)V

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic Compute(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 31
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/MinkowskiDistance;->Compute([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute([D[D)D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, LCatalano/Math/Distances/MinkowskiDistance;->a:D

    invoke-static {p1, p2, v0, v1}, LCatalano/Math/Distances/Distance;->Minkowski([D[DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOrder()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Math/Distances/MinkowskiDistance;->a:D

    return-wide v0
.end method

.method public setOrder(D)V
    .locals 3

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "P must be different from 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-wide p1, p0, LCatalano/Math/Distances/MinkowskiDistance;->a:D

    .line 51
    return-void
.end method
