.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->a:I

    .line 711
    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->b:I

    .line 712
    iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->c:I

    .line 713
    iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->d:I

    .line 714
    iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->e:I

    .line 715
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->b:I

    return v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->e:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->d:I

    return v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->a:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->c:I

    return v0
.end method
