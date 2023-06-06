.class Landroid/support/v4/view/MenuItemCompat$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lct$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/MenuItemCompat$c;->a(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field final synthetic b:Landroid/support/v4/view/MenuItemCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/MenuItemCompat$c;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v4/view/MenuItemCompat$c$1;->b:Landroid/support/v4/view/MenuItemCompat$c;

    iput-object p2, p0, Landroid/support/v4/view/MenuItemCompat$c$1;->a:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$c$1;->a:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$c$1;->a:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
