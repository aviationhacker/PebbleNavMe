.class Lcom/google/android/gms/internal/zzqt$b$1;
.super Lcom/google/android/gms/internal/zzqt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqt$b;->a(Lcom/google/android/gms/internal/zzqs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzqt$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqt$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqt$b$1;->a:Lcom/google/android/gms/internal/zzqt$b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqt$a;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbb(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$b$1;->a:Lcom/google/android/gms/internal/zzqt$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqt$b;->a(Lcom/google/android/gms/internal/zzqt$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqt$b$1;->a:Lcom/google/android/gms/internal/zzqt$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqt$b;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
