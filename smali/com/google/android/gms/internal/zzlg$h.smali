.class Lcom/google/android/gms/internal/zzlg$h;
.super Lcom/google/android/gms/internal/zzlg$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzlg;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlg;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$h;->a:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$i;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg$h;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$h;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlg;->g(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/Api$zzb;->zza(Lcom/google/android/gms/common/internal/zzp;)V

    goto :goto_0

    :cond_0
    return-void
.end method
