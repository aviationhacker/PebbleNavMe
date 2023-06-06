.class public Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->a(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->b(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->c(Lcom/google/android/gms/auth/api/credentials/Credential;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->c:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->d(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->e(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->f(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->g(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->h(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one of password or accountType may be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/auth/api/credentials/Credential;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzaa(Z)V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->f:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->c:Landroid/net/Uri;

    return-object p0
.end method
