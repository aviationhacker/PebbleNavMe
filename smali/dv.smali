.class public Ldv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ldv$1;

    invoke-direct {v1, p1, p0}, Ldv$1;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 31
    return-void
.end method
