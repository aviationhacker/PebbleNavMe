.class public LCatalano/Statistics/Kernels/Anova;
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
.field private a:I

.field private b:I

.field private c:[[[D


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, LCatalano/Statistics/Kernels/Anova;->a:I

    .line 46
    iput p2, p0, LCatalano/Statistics/Kernels/Anova;->b:I

    .line 47
    filled-new-array {p1, p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, LCatalano/Statistics/Kernels/Anova;->c:[[[D

    .line 48
    return-void
.end method

.method private a([DI[DII)D
    .locals 6

    .prologue
    .line 65
    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    .line 67
    :cond_0
    const-wide/16 v0, 0x0

    .line 77
    :goto_0
    aget-wide v2, p1, p2

    aget-wide v4, p3, p4

    mul-double/2addr v2, v4

    .line 80
    if-nez p5, :cond_3

    .line 82
    add-double/2addr v0, v2

    .line 91
    :cond_1
    :goto_1
    return-wide v0

    .line 72
    :cond_2
    iget-object v0, p0, LCatalano/Statistics/Kernels/Anova;->c:[[[D

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    add-int/lit8 v1, p4, -0x1

    aget-object v0, v0, v1

    aget-wide v0, v0, p5

    goto :goto_0

    .line 84
    :cond_3
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 91
    iget-object v4, p0, LCatalano/Statistics/Kernels/Anova;->c:[[[D

    add-int/lit8 v5, p2, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, p4, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, p5, -0x1

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic Function(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2

    .prologue
    .line 33
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, LCatalano/Statistics/Kernels/Anova;->Function([D[D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Function([D[D)D
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 53
    move v5, v6

    :goto_0
    iget v0, p0, LCatalano/Statistics/Kernels/Anova;->b:I

    if-ge v5, v0, :cond_2

    move v2, v6

    .line 54
    :goto_1
    iget v0, p0, LCatalano/Statistics/Kernels/Anova;->a:I

    if-ge v2, v0, :cond_1

    move v4, v6

    .line 55
    :goto_2
    iget v0, p0, LCatalano/Statistics/Kernels/Anova;->a:I

    if-ge v4, v0, :cond_0

    .line 56
    iget-object v0, p0, LCatalano/Statistics/Kernels/Anova;->c:[[[D

    aget-object v0, v0, v2

    aget-object v7, v0, v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, LCatalano/Statistics/Kernels/Anova;->a([DI[DII)D

    move-result-wide v0

    aput-wide v0, v7, v5

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 54
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, LCatalano/Statistics/Kernels/Anova;->c:[[[D

    iget v1, p0, LCatalano/Statistics/Kernels/Anova;->a:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, LCatalano/Statistics/Kernels/Anova;->a:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, LCatalano/Statistics/Kernels/Anova;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method
