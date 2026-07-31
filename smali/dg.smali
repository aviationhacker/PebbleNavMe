.class public Ldg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 57
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 37
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 45
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    return v0
.end method
