.class Landroid/support/v4/media/session/MediaSessionCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    .line 1921
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1922
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    .line 1926
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->e(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1927
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;I)V

    .line 1937
    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 1988
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2025
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1983
    return-void
.end method

.method public a(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2

    .prologue
    .line 1946
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1948
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1931
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1932
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1978
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2011
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1963
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1998
    const/4 v0, 0x0

    .line 1999
    if-eqz p1, :cond_1

    .line 2000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2001
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 2002
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2005
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Ljava/util/List;)V

    .line 2006
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->a(Ljava/lang/Object;Z)V

    .line 1953
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->d(Ljava/lang/Object;)V

    .line 1968
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->b(Ljava/lang/Object;I)V

    .line 1942
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 1992
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->c:Landroid/app/PendingIntent;

    .line 1993
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->b(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 1994
    return-void
.end method

.method public c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 2015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 2018
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lbq;->a(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

    return-object v0
.end method
