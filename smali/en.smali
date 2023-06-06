.class public Len;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 57
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 69
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 73
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 82
    return-void
.end method
