.class Lcom/google/android/gms/signin/internal/zzi$a;
.super Lcom/google/android/gms/signin/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/signin/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzqx;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqx;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzd$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/zzi$a;->a:Lcom/google/android/gms/internal/zzqx;

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/zzi$a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi$a;->a:Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->zzCg()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/signin/internal/zzi$a;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zzi$a;->a()Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/internal/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi$a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/signin/internal/zzi$a$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/signin/internal/zzi$a$2;-><init>(Lcom/google/android/gms/signin/internal/zzi$a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/internal/zzf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/signin/internal/zzf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Lcom/google/android/gms/signin/internal/zzf;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzi$a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/signin/internal/zzi$a$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/signin/internal/zzi$a$1;-><init>(Lcom/google/android/gms/signin/internal/zzi$a;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/signin/internal/zzf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
