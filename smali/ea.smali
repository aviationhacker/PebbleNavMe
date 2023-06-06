.class public Lea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea$a;
    }
.end annotation


# direct methods
.method public static a(Lea$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lea$1;

    invoke-direct {v0, p0}, Lea$1;-><init>(Lea$a;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    check-cast p1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    return v0
.end method
