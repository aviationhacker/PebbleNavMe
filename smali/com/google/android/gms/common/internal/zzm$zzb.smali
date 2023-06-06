.class final Lcom/google/android/gms/common/internal/zzm$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzm$zzb$zza;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/zzm;

.field private final b:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Landroid/os/IBinder;

.field private final g:Lcom/google/android/gms/common/internal/zzm$a;

.field private h:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/internal/zzm$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->g:Lcom/google/android/gms/common/internal/zzm$a;

    new-instance v0, Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzm$zzb$zza;-><init>(Lcom/google/android/gms/common/internal/zzm$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->b:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/zzm$zzb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->h:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->f:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/zzm$zzb;)Lcom/google/android/gms/common/internal/zzm$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->g:Lcom/google/android/gms/common/internal/zzm$a;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/zzm$zzb;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->c(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->b(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->g:Lcom/google/android/gms/common/internal/zzm$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzm$a;->a()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->c(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->b(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->g:Lcom/google/android/gms/common/internal/zzm$a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzm$a;->a()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->b:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->c(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->b(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->b:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->e:Z

    return v0
.end method

.method public a(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    return v0
.end method

.method public b(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->c(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->b(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->c(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->a:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->b(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->b:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->e:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->d:I

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method public e()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->h:Landroid/content/ComponentName;

    return-object v0
.end method
