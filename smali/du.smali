.class public Ldu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    return-object v0
.end method
