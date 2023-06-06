.class Lcom/google/android/gms/internal/zzlz$1;
.super Lgm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlz;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzlz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlz;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlz$1;->a:Lcom/google/android/gms/internal/zzlz;

    invoke-direct {p0, p2}, Lgm$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/zzmb;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmb;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmd;

    new-instance v1, Lcom/google/android/gms/internal/zzlz$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlz$a;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzmd;->zza(Lcom/google/android/gms/internal/zzmc;)V

    return-void
.end method

.method protected synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzmb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlz$1;->a(Lcom/google/android/gms/internal/zzmb;)V

    return-void
.end method
