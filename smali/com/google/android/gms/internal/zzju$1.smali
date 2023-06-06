.class Lcom/google/android/gms/internal/zzju$1;
.super Lcom/google/android/gms/internal/zzju$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzju;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/appdatasearch/UsageInfo;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzju$c",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

.field final synthetic c:Lcom/google/android/gms/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzju$1;->c:Lcom/google/android/gms/internal/zzju;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzju$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzju$1;->b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzju$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/zzjp;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzju$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzju$d;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzju$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzju$1;->b:[Lcom/google/android/gms/appdatasearch/UsageInfo;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjq;Ljava/lang/String;[Lcom/google/android/gms/appdatasearch/UsageInfo;)V

    return-void
.end method
