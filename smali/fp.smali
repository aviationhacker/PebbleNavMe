.class public Lfp;
.super Lfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfp$a;
    }
.end annotation


# instance fields
.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lfo;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfp;->r:Z

    .line 30
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lfp$a;

    invoke-direct {v0, p0, p1}, Lfp$a;-><init>(Lfp;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lfp;->r:Z

    return v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lfp;->r:Z

    .line 42
    return-void
.end method
