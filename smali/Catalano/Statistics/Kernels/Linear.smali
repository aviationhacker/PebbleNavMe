.class public LCatalano/Statistics/Kernels/Linear;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Kernels/Linear;->a:D

    .line 41
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Linear;->a:D

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 24
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Linear;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    .line 66
    iget-wide v2, p0, LCatalano/Statistics/Kernels/Linear;->a:D

    .line 67
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 68
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-wide v2
.end method

.method public getConstant()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, LCatalano/Statistics/Kernels/Linear;->a:D

    return-wide v0
.end method

.method public setConstant(D)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, LCatalano/Statistics/Kernels/Linear;->a:D

    .line 57
    return-void
.end method
