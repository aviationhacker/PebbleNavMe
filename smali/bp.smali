.class public Lbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/media/AudioManager;

.field final c:Landroid/view/View;

.field final d:Lbo;

.field final e:Ljava/lang/String;

.field final f:Landroid/content/IntentFilter;

.field final g:Landroid/content/Intent;

.field final h:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

.field final i:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field final j:Landroid/content/BroadcastReceiver;

.field k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field l:Landroid/app/PendingIntent;

.field m:Landroid/media/RemoteControlClient;

.field n:Z

.field o:I

.field p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/view/View;Lbo;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lbp$1;

    invoke-direct {v0, p0}, Lbp$1;-><init>(Lbp;)V

    iput-object v0, p0, Lbp;->h:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 52
    new-instance v0, Lbp$2;

    invoke-direct {v0, p0}, Lbp$2;-><init>(Lbp;)V

    iput-object v0, p0, Lbp;->i:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 60
    new-instance v0, Lbp$3;

    invoke-direct {v0, p0}, Lbp$3;-><init>(Lbp;)V

    iput-object v0, p0, Lbp;->j:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lbp$4;

    invoke-direct {v0, p0}, Lbp$4;-><init>(Lbp;)V

    iput-object v0, p0, Lbp;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lbp;->o:I

    .line 87
    iput-object p1, p0, Lbp;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lbp;->b:Landroid/media/AudioManager;

    .line 89
    iput-object p3, p0, Lbp;->c:Landroid/view/View;

    .line 90
    iput-object p4, p0, Lbp;->d:Lbo;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":transport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbp;->e:Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbp;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbp;->g:Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lbp;->g:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lbp;->f:Landroid/content/IntentFilter;

    .line 95
    iget-object v0, p0, Lbp;->f:Landroid/content/IntentFilter;

    iget-object v1, p0, Lbp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lbp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbp;->h:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 97
    iget-object v0, p0, Lbp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbp;->i:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public a(ZJI)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1, p2, p3, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 162
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p4}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 164
    :cond_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lbp;->k()V

    .line 106
    iget-object v0, p0, Lbp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbp;->h:Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 107
    iget-object v0, p0, Lbp;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lbp;->i:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 108
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lbp;->a:Landroid/content/Context;

    iget-object v1, p0, Lbp;->j:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lbp;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lbp;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lbp;->g:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lbp;->l:Landroid/app/PendingIntent;

    .line 114
    new-instance v0, Landroid/media/RemoteControlClient;

    iget-object v1, p0, Lbp;->l:Landroid/app/PendingIntent;

    invoke-direct {v0, v1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    .line 115
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p0}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 116
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 117
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lbp;->n:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbp;->n:Z

    .line 122
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 123
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 124
    iget v0, p0, Lbp;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lbp;->e()V

    .line 128
    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    iget-boolean v0, p0, Lbp;->p:Z

    if-nez v0, :cond_0

    .line 132
    iput-boolean v3, p0, Lbp;->p:Z

    .line 133
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 136
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 139
    iget v0, p0, Lbp;->o:I

    if-eq v0, v1, :cond_0

    .line 140
    iput v1, p0, Lbp;->o:I

    .line 141
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lbp;->n:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lbp;->e()V

    .line 146
    :cond_1
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 167
    iget v0, p0, Lbp;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 168
    iput v2, p0, Lbp;->o:I

    .line 169
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lbp;->i()V

    .line 172
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    iget v0, p0, Lbp;->o:I

    if-eq v0, v1, :cond_0

    .line 176
    iput v1, p0, Lbp;->o:I

    .line 177
    iget-object v0, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lbp;->i()V

    .line 180
    return-void
.end method

.method i()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lbp;->p:Z

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbp;->p:Z

    .line 185
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->k:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 187
    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lbp;->i()V

    .line 191
    iget-boolean v0, p0, Lbp;->n:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbp;->n:Z

    .line 193
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 194
    iget-object v0, p0, Lbp;->b:Landroid/media/AudioManager;

    iget-object v1, p0, Lbp;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    .line 196
    :cond_0
    return-void
.end method

.method k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0}, Lbp;->j()V

    .line 200
    iget-object v0, p0, Lbp;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lbp;->a:Landroid/content/Context;

    iget-object v1, p0, Lbp;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    iget-object v0, p0, Lbp;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 203
    iput-object v2, p0, Lbp;->l:Landroid/app/PendingIntent;

    .line 204
    iput-object v2, p0, Lbp;->m:Landroid/media/RemoteControlClient;

    .line 206
    :cond_0
    return-void
.end method

.method public onGetPlaybackPosition()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lbp;->d:Lbo;

    invoke-interface {v0}, Lbo;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPlaybackPositionUpdate(J)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbp;->d:Lbo;

    invoke-interface {v0, p1, p2}, Lbo;->a(J)V

    .line 156
    return-void
.end method
