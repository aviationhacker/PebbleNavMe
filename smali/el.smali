.class public Lel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 35
    return-void
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 38
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 39
    return-void
.end method
