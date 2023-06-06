.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$4;
.super Lgh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zzc;->disableAutoSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$4;->a:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    invoke-direct {p0, p2}, Lgh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$a;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzh;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$4;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
