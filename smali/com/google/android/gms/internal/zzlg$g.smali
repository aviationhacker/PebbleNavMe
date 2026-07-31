.class Lcom/google/android/gms/internal/zzlg$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$g;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->f(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzlg$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzlg$b;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzt;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->c(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->b(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->i(Lcom/google/android/gms/internal/zzlg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->j(Lcom/google/android/gms/internal/zzlg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->c(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzlg;->a(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$g;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->c(Lcom/google/android/gms/internal/zzlg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
