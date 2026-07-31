.class public Lct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct$a;,
        Lct$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/MenuItem;Lct$b;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lct$a;

    invoke-direct {v0, p1}, Lct$a;-><init>(Lct$b;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 24
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 28
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 32
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method
