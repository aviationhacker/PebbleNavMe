.class Landroid/support/v7/widget/Toolbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1949
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Landroid/support/v7/widget/Toolbar$1;)V
    .locals 0

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$a;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2040
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2041
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2044
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2045
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2046
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()V

    .line 2049
    iput-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 2050
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2051
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2053
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2011
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 2012
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2013
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2015
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 2016
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 2017
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2018
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 2019
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2020
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 2021
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2022
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2025
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()V

    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2027
    invoke-virtual {p2, v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2029
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz v0, :cond_2

    .line 2030
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2033
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 2006
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2058
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1

    .prologue
    .line 1964
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 1959
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1960
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 2002
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 2068
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2063
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .prologue
    .line 1993
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1970
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    .line 1973
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1974
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    .line 1975
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1976
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1977
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1978
    const/4 v0, 0x1

    .line 1984
    :cond_0
    if-nez v0, :cond_1

    .line 1986
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$a;->a:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$a;->b:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar$a;->collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 1989
    :cond_1
    return-void

    .line 1975
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
