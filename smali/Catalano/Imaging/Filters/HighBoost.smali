.class public LCatalano/Imaging/Filters/HighBoost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    .line 37
    iput v3, p0, LCatalano/Imaging/Filters/HighBoost;->c:I

    .line 82
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x8
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    .line 37
    iput v3, p0, LCatalano/Imaging/Filters/HighBoost;->c:I

    .line 89
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/HighBoost;->setBoost(I)V

    .line 90
    return-void

    .line 32
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x8
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    .line 37
    iput v3, p0, LCatalano/Imaging/Filters/HighBoost;->c:I

    .line 98
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/HighBoost;->setWindowSize(I)V

    .line 99
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/HighBoost;->setBoost(I)V

    .line 100
    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x8
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, LCatalano/Imaging/Filters/Convolution;

    iget-object v1, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Convolution;-><init>([[I)V

    .line 109
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 110
    return-void
.end method

.method public getBoost()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    return v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LCatalano/Imaging/Filters/HighBoost;->c:I

    return v0
.end method

.method public setBoost(I)V
    .locals 3

    .prologue
    .line 52
    iput p1, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    .line 53
    iget-object v0, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    iget-object v1, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    .line 54
    return-void
.end method

.method public setWindowSize(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    iput p1, p0, LCatalano/Imaging/Filters/HighBoost;->c:I

    .line 70
    filled-new-array {p1, p1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    move v0, v1

    .line 71
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 72
    :goto_1
    iget-object v3, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 73
    iget-object v3, p0, LCatalano/Imaging/Filters/HighBoost;->a:[[I

    aget-object v3, v3, v0

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, LCatalano/Imaging/Filters/HighBoost;->b:I

    invoke-virtual {p0, v0}, LCatalano/Imaging/Filters/HighBoost;->setBoost(I)V

    .line 77
    return-void
.end method
