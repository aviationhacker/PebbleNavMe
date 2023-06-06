.class public Ldd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 94
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 154
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 98
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 158
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 106
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 110
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 114
    return-void
.end method

.method public static g(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 118
    return-void
.end method

.method public static h(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 122
    return-void
.end method

.method public static i(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 126
    return-void
.end method

.method public static j(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static j(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 130
    return-void
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 134
    return-void
.end method

.method public static l(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 150
    return-void
.end method
