.class Landroid/support/v4/media/session/MediaSessionCompatApi23$a;
.super Landroid/support/v4/media/session/MediaSessionCompatApi21$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi21$a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    .line 35
    return-void
.end method


# virtual methods
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi23$a;->a:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
