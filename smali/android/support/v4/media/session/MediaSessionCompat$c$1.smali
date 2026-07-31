.class Landroid/support/v4/media/session/MediaSessionCompat$c$1;
.super Landroid/support/v4/media/VolumeProviderCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$c;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-direct {p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 6

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/VolumeProviderCompat;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1006
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/session/MediaSessionCompat$c;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->c(Landroid/support/v4/media/session/MediaSessionCompat$c;)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    .line 1009
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$1;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_0
.end method
