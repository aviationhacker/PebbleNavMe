.class public Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.source "SourceFile"


# instance fields
.field private a:[Lcom/jabistudio/androidjhlabs/filter/Curve;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;-><init>()V

    .line 22
    new-array v0, v3, [Lcom/jabistudio/androidjhlabs/filter/Curve;

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jabistudio/androidjhlabs/filter/Curve;

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    .line 26
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    const/4 v1, 0x0

    new-instance v2, Lcom/jabistudio/androidjhlabs/filter/Curve;

    invoke-direct {v2}, Lcom/jabistudio/androidjhlabs/filter/Curve;-><init>()V

    aput-object v2, v0, v1

    .line 27
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    new-instance v1, Lcom/jabistudio/androidjhlabs/filter/Curve;

    invoke-direct {v1}, Lcom/jabistudio/androidjhlabs/filter/Curve;-><init>()V

    aput-object v1, v0, v3

    .line 28
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    const/4 v1, 0x2

    new-instance v2, Lcom/jabistudio/androidjhlabs/filter/Curve;

    invoke-direct {v2}, Lcom/jabistudio/androidjhlabs/filter/Curve;-><init>()V

    aput-object v2, v0, v1

    .line 29
    return-void
.end method


# virtual methods
.method public getCurves()[Lcom/jabistudio/androidjhlabs/filter/Curve;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    return-object v0
.end method

.method protected initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->initialized:Z

    .line 33
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    array-length v0, v0

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Curve;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->bTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->gTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->rTable:[I

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Curve;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->rTable:[I

    .line 37
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Curve;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->gTable:[I

    .line 38
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Curve;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->bTable:[I

    goto :goto_0
.end method

.method public setCurve(Lcom/jabistudio/androidjhlabs/filter/Curve;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jabistudio/androidjhlabs/filter/Curve;

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    .line 44
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->initialized:Z

    .line 45
    return-void
.end method

.method public setCurves([Lcom/jabistudio/androidjhlabs/filter/Curve;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Curves must be length 1 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->a:[Lcom/jabistudio/androidjhlabs/filter/Curve;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/CurvesFilter;->initialized:Z

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Colors/Curves..."

    return-object v0
.end method
