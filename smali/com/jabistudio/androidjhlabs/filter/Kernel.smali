.class public Lcom/jabistudio/androidjhlabs/filter/Kernel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[F


# direct methods
.method public constructor <init>(II[F)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->a:I

    .line 10
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->b:I

    .line 11
    iput-object p3, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->c:[F

    .line 12
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->b:I

    return v0
.end method

.method public getKernelData([F)[F
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->c:[F

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Kernel;->a:I

    return v0
.end method
