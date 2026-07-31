.class Landroid/support/v4/widget/ExploreByTouchHelper$a;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$a;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$1;)V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper$a;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$a;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->a(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$a;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->a(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
