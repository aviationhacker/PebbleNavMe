.class public Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;->setOpacity(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2

    .prologue
    .line 63
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 64
    const v0, 0xffffff

    and-int/2addr v0, p3

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;->b:I

    or-int p3, v0, v1

    .line 65
    :cond_0
    return p3
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;->a:I

    return v0
.end method

.method public setOpacity(I)V
    .locals 1

    .prologue
    .line 49
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;->a:I

    .line 50
    shl-int/lit8 v0, p1, 0x18

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OpacityFilter;->b:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Colors/Transparency..."

    return-object v0
.end method
