.class public Lfq;
.super Lfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfq$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lfp;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 27
    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lfq$a;

    invoke-direct {v0, p0, p1}, Lfq$a;-><init>(Lfq;Landroid/view/Window$Callback;)V

    return-object v0
.end method
