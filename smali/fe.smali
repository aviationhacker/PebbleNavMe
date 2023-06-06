.class public Lfe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/PopupWindow;I)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 25
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;)Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getOverlapAnchor()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/widget/PopupWindow;)I
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWindowLayoutType()I

    move-result v0

    return v0
.end method
