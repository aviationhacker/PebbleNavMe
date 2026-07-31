.class abstract Lcom/google/android/gms/internal/zzju$b;
.super Lcom/google/android/gms/internal/zzlb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzlb$zza",
        "<TT;",
        "Lcom/google/android/gms/internal/zzjs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPT:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/zzjp;)V
.end method

.method protected final a(Lcom/google/android/gms/internal/zzjs;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzjs;->zzlw()Lcom/google/android/gms/internal/zzjp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzju$b;->a(Lcom/google/android/gms/internal/zzjp;)V

    return-void
.end method

.method protected synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzju$b;->a(Lcom/google/android/gms/internal/zzjs;)V

    return-void
.end method
