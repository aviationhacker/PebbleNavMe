.class public abstract Lfn;
.super Landroid/support/v7/app/AppCompatDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfn$1;,
        Lfn$b;,
        Lfn$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field public final b:Landroid/view/Window;

.field protected final c:Landroid/view/Window$Callback;

.field protected final d:Landroid/view/Window$Callback;

.field public final e:Landroid/support/v7/app/AppCompatCallback;

.field protected f:Landroid/support/v7/app/ActionBar;

.field protected g:Landroid/view/MenuInflater;

.field public h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegate;-><init>()V

    .line 63
    iput-object p1, p0, Lfn;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lfn;->b:Landroid/view/Window;

    .line 65
    iput-object p3, p0, Lfn;->e:Landroid/support/v7/app/AppCompatCallback;

    .line 67
    iget-object v0, p0, Lfn;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lfn;->c:Landroid/view/Window$Callback;

    .line 68
    iget-object v0, p0, Lfn;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Lfn$b;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lfn;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Lfn;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lfn;->d:Landroid/view/Window$Callback;

    .line 74
    iget-object v0, p0, Lfn;->b:Landroid/view/Window;

    iget-object v1, p0, Lfn;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 75
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lfn$b;

    invoke-direct {v0, p0, p1}, Lfn$b;-><init>(Lfn;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public abstract a()V
.end method

.method public abstract a(ILandroid/view/Menu;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract a(Landroid/view/KeyEvent;)Z
.end method

.method protected final b()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lfn;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public abstract b(ILandroid/view/Menu;)Z
.end method

.method protected final c()Landroid/content/Context;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lfn;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    :cond_0
    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lfn;->a:Landroid/content/Context;

    .line 132
    :cond_1
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lfn;->n:Z

    return v0
.end method

.method public final e()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lfn;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lfn;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lfn;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfn;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lfn$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfn$a;-><init>(Lfn;Lfn$1;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lfn;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lfn;->a()V

    .line 100
    new-instance v1, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v0, p0, Lfn;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfn;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfn;->g:Landroid/view/MenuInflater;

    .line 103
    :cond_0
    iget-object v0, p0, Lfn;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 100
    :cond_1
    iget-object v0, p0, Lfn;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lfn;->a()V

    .line 88
    iget-object v0, p0, Lfn;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfn;->n:Z

    .line 179
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lfn;->m:Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {p0, p1}, Lfn;->a(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
