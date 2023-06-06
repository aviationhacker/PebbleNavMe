.class Landroid/support/v4/media/session/MediaSessionCompat$c$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$c;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1759
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    .line 1760
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1761
    return-void
.end method

.method private a(Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 1852
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-nez v0, :cond_2

    move-wide v0, v2

    .line 1856
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 1896
    :sswitch_0
    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move v7, v4

    .line 1898
    :goto_2
    const-wide/16 v8, 0x204

    and-long/2addr v8, v0

    cmp-long v6, v8, v2

    if-eqz v6, :cond_4

    move v6, v4

    .line 1900
    :goto_3
    const-wide/16 v8, 0x202

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v4

    .line 1902
    :goto_4
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 1903
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->t(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    goto :goto_1

    .line 1859
    :sswitch_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_0

    .line 1865
    :sswitch_2
    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_0

    .line 1870
    :sswitch_3
    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto/16 :goto_0

    .line 1875
    :sswitch_4
    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto/16 :goto_0

    .line 1880
    :sswitch_5
    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto/16 :goto_0

    .line 1885
    :sswitch_6
    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_0

    .line 1890
    :sswitch_7
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1891
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_0

    :cond_3
    move v7, v5

    .line 1896
    goto/16 :goto_2

    :cond_4
    move v6, v5

    .line 1898
    goto/16 :goto_3

    :cond_5
    move v0, v5

    .line 1900
    goto/16 :goto_4

    .line 1904
    :cond_6
    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    .line 1905
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto/16 :goto_0

    .line 1856
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_5
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a(ILjava/lang/Object;)V

    .line 1775
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1771
    return-void
.end method

.method public a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1764
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1765
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1767
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1783
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1849
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1788
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_0

    .line 1791
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1794
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1797
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1800
    :pswitch_4
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    goto :goto_0

    .line 1803
    :pswitch_5
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_0

    .line 1806
    :pswitch_6
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_0

    .line 1809
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_0

    .line 1812
    :pswitch_8
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_0

    .line 1815
    :pswitch_9
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_0

    .line 1818
    :pswitch_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_0

    .line 1821
    :pswitch_b
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    goto/16 :goto_0

    .line 1824
    :pswitch_c
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_0

    .line 1827
    :pswitch_d
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1830
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1831
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1834
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1835
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 1839
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    .line 1840
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;->s(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->a:Ljava/lang/String;

    iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->b:Landroid/os/Bundle;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 1843
    :pswitch_10
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->a(Landroid/support/v4/media/session/MediaSessionCompat$c;II)V

    goto/16 :goto_0

    .line 1846
    :pswitch_11
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$c;->b(Landroid/support/v4/media/session/MediaSessionCompat$c;II)V

    goto/16 :goto_0

    .line 1786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
    .end packed-switch
.end method
