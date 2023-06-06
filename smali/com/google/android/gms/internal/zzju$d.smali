.class final Lcom/google/android/gms/internal/zzju$d;
.super Lcom/google/android/gms/internal/zzjr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjr",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlb$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzjr;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju$d;->zzRb:Lcom/google/android/gms/internal/zzlb$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlb$zzb;->zzp(Ljava/lang/Object;)V

    return-void
.end method
