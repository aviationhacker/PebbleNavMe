.class public Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$b;,
        Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method static synthetic a()Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    return-object v0
.end method

.method public static addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;->a(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    move-result v0

    return v0
.end method

.method public static getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
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
    .line 186
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;->a(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
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
    .line 167
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;->a(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;->b(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public static removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$c;->b(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    move-result v0

    return v0
.end method
