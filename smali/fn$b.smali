.class Lfn$b;
.super Landroid/support/v7/internal/view/WindowCallbackWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfn;


# direct methods
.method constructor <init>(Lfn;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lfn$b;->a:Lfn;

    .line 219
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 220
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-virtual {v0, p1}, Lfn;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lfn;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 236
    if-nez p1, :cond_0

    instance-of v0, p2, Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-virtual {v0, p1, p2}, Lfn;->b(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 286
    iget-object v0, p0, Lfn$b;->a:Lfn;

    invoke-virtual {v0, p1, p2}, Lfn;->a(ILandroid/view/Menu;)V

    .line 287
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    instance-of v0, p3, Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-object v2, v0

    .line 254
    :goto_0
    if-nez p1, :cond_2

    if-nez v2, :cond_2

    move v0, v1

    .line 274
    :cond_0
    :goto_1
    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    .line 264
    :cond_2
    if-eqz v2, :cond_3

    .line 265
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 268
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 270
    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    goto :goto_1
.end method
