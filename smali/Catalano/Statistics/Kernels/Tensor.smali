.class public LCatalano/Statistics/Kernels/Tensor;
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
.field private a:[LCatalano/Statistics/Kernels/IMercerKernel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCatalano/Statistics/Kernels/IMercerKernel",
            "<[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LCatalano/Statistics/Kernels/IMercerKernel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCatalano/Statistics/Kernels/IMercerKernel",
            "<[D>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LCatalano/Statistics/Kernels/Tensor;->a:[LCatalano/Statistics/Kernels/IMercerKernel;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 13
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Tensor;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 6

    .prologue
    .line 23
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 25
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LCatalano/Statistics/Kernels/Tensor;->a:[LCatalano/Statistics/Kernels/IMercerKernel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, LCatalano/Statistics/Kernels/Tensor;->a:[LCatalano/Statistics/Kernels/IMercerKernel;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, LCatalano/Statistics/Kernels/IMercerKernel;->Function(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-wide v2
.end method
