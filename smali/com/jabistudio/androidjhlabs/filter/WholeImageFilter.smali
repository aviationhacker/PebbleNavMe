.class public abstract Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected originalSpace:Landroid/graphics/Rect;

.field protected transformedSpace:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->originalSpace:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->transformedSpace:Landroid/graphics/Rect;

    .line 48
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->transformedSpace:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->transformSpace(Landroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->transformedSpace:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;->filterPixels(II[ILandroid/graphics/Rect;)[I

    move-result-object v0

    .line 53
    return-object v0
.end method

.method protected abstract filterPixels(II[ILandroid/graphics/Rect;)[I
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
