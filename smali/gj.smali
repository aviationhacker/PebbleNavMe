.class public abstract Lgj;
.super Lcom/google/android/gms/internal/zzlb$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlb$zza",
        "<",
        "Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;",
        "Lcom/google/android/gms/internal/zzki;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->zzRE:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;
    .locals 1

    new-instance v0, Lgk;

    invoke-direct {v0, p1}, Lgk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;)V
.end method

.method protected final a(Lcom/google/android/gms/internal/zzki;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzki;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzki;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {p0, v1, v0}, Lgj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzkk;)V

    return-void
.end method

.method protected synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzki;

    invoke-virtual {p0, p1}, Lgj;->a(Lcom/google/android/gms/internal/zzki;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lgj;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;

    move-result-object v0

    return-object v0
.end method
