.class Landroid/support/v4/view/ViewGroupCompat$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 88
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
