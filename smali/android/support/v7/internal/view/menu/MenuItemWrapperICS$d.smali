.class Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$d;
.super Lft;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lft",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$d;->a:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .line 316
    invoke-direct {p0, p2}, Lft;-><init>(Ljava/lang/Object;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$d;->a:Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
