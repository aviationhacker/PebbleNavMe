.class Landroid/support/v4/media/session/MediaControllerCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 1

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    .line 1152
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1144
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    .line 1146
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1173
    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$e;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;II)V

    .line 1241
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->c(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->c(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1158
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1251
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->a(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1179
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->b(Ljava/lang/Object;II)V

    .line 1246
    return-void
.end method

.method public c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1191
    if-nez v1, :cond_1

    .line 1192
    const/4 v0, 0x0

    .line 1199
    :cond_0
    return-object v0

    .line 1194
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1197
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->obtain(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->f(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->h(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .locals 6

    .prologue
    .line 1224
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1225
    if-eqz v5, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getLegacyAudioStream(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getVolumeControl(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getMaxVolume(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getCurrentVolume(Ljava/lang/Object;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->j(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Ljava/lang/Object;

    return-object v0
.end method
