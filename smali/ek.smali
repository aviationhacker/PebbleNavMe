.class public Lek;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 123
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 124
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 163
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 164
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 187
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 127
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 131
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 132
    return-void
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 143
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 144
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 135
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public static b(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 147
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 151
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 152
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 139
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public static c(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 155
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 156
    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 159
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 160
    return-void
.end method

.method public static d(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 167
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 168
    return-void
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 171
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 172
    return-void
.end method

.method public static e(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 183
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 184
    return-void
.end method

.method public static f(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 175
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 176
    return-void
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 59
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 179
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 180
    return-void
.end method

.method public static h(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 63
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 191
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 192
    return-void
.end method

.method public static i(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 67
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 71
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public static k(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 75
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public static l(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 91
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public static p(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 95
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 103
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 107
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public static t(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 111
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 115
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 120
    return-void
.end method
