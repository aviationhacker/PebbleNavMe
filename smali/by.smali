.class public Lby;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p0, Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    .line 26
    return-void
.end method
