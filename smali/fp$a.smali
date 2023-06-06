.class Lfp$a;
.super Lfn$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lfp;


# direct methods
.method constructor <init>(Lfp;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lfp$a;->b:Lfp;

    .line 51
    invoke-direct {p0, p1, p2}, Lfn$b;-><init>(Lfn;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v1, p0, Lfp$a;->b:Lfp;

    iget-object v1, v1, Lfp;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 74
    iget-object v1, p0, Lfp$a;->b:Lfp;

    invoke-virtual {v1, v0}, Lfp;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lfp$a;->b:Lfp;

    invoke-virtual {v0}, Lfp;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lfp$a;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lfn$b;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
