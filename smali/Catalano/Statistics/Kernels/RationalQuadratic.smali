.class public LCatalano/Statistics/Kernels/RationalQuadratic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Kernels/IMercerKernel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LCatalano/Statistics/Kernels/IMercerKernel",
        "<[D>;"
    }
.end annotation


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, LCatalano/Statistics/Kernels/RationalQuadratic;-><init>(D)V

    .line 27
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, LCatalano/Statistics/Kernels/RationalQuadratic;->a:D

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 13
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/RationalQuadratic;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 38
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    .line 39
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, LCatalano/Statistics/Kernels/RationalQuadratic;->a:D

    sub-double v4, v2, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getConstant()D
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, LCatalano/Statistics/Kernels/RationalQuadratic;->a:D

    return-wide v0
.end method

.method public setConstant(D)V
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, LCatalano/Statistics/Kernels/RationalQuadratic;->a:D

    .line 23
    return-void
.end method
