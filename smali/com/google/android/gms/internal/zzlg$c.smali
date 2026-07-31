.class Lcom/google/android/gms/internal/zzlg$c;
.super Lcom/google/android/gms/internal/zzlg$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzlg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzlg;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg$c;->a:Lcom/google/android/gms/internal/zzlg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzlg$i;-><init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlg;Lcom/google/android/gms/internal/zzlg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzlg$c;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg$c;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlg;->f(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzqw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg$c;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlg;->g(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlg$c;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlg;->d(Lcom/google/android/gms/internal/zzlg;)Lcom/google/android/gms/internal/zzli;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzli;->f:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/zzlg$a;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlg$c;->a:Lcom/google/android/gms/internal/zzlg;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzlg$a;-><init>(Lcom/google/android/gms/internal/zzlg;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzqw;->zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;Lcom/google/android/gms/signin/internal/zze;)V

    return-void
.end method
