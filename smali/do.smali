.class public Ldo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    .line 29
    return-void
.end method
