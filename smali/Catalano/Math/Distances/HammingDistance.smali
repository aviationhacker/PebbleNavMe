.class public LCatalano/Math/Distances/HammingDistance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Math/Distances/IDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LCatalano/Math/Distances/IDistance",
        "<",
        "Ljava/lang/String;",
        ">;"
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
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LCatalano/Math/Distances/HammingDistance;->Compute(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public Compute(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 40
    invoke-static {p1, p2}, LCatalano/Math/Distances/Distance;->Hamming(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method
