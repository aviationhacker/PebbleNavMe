.class public Ldp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 25
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method
