.class Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;->a(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.field final synthetic b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a$1;->b:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a;

    iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a$1;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$a$1;->a:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;->onAccessibilityStateChanged(Z)V

    .line 87
    return-void
.end method
