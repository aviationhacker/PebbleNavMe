.class public Lcm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    .line 35
    return-void
.end method

.method public static a(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    check-cast p2, Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    return v0
.end method
