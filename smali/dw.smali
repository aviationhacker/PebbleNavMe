.class public Ldw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    .line 25
    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationZBy(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    return-void
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->z(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->zBy(F)Landroid/view/ViewPropertyAnimator;

    .line 37
    return-void
.end method
