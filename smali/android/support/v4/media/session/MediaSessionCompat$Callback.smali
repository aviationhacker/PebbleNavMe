.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 475
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$b;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$b;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$1;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi23;->a(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->a:Ljava/lang/Object;

    .line 481
    :goto_0
    return-void

    .line 476
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 477
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$a;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$1;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->a:Ljava/lang/Object;

    goto :goto_0

    .line 479
    :cond_1
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->a:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    .prologue
    .line 582
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .prologue
    .line 590
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method
