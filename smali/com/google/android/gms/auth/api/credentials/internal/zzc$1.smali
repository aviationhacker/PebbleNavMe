.class Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;
.super Lgh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/api/credentials/internal/zzc;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

.field final synthetic b:Lcom/google/android/gms/auth/api/credentials/internal/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->b:Lcom/google/android/gms/auth/api/credentials/internal/zzc;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lgh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzb;->zzh(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/internal/zzh;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1$1;-><init>(Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->a:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/auth/api/credentials/internal/zzh;->zza(Lcom/google/android/gms/auth/api/credentials/internal/zzg;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzc$1;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object v0

    return-object v0
.end method
