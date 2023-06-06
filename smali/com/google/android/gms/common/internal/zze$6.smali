.class final Lcom/google/android/gms/common/internal/zze$6;
.super Lcom/google/android/gms/common/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zze;->zza(CC)Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:C

.field final synthetic b:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/common/internal/zze$6;->a:C

    iput-char p2, p0, Lcom/google/android/gms/common/internal/zze$6;->b:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$6;->a:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/android/gms/common/internal/zze$6;->b:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
