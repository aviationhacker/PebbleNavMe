.class public Lcg;
.super Landroid/support/v4/provider/DocumentFile;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/provider/DocumentFile;-><init>(Landroid/support/v4/provider/DocumentFile;)V

    .line 29
    iput-object p2, p0, Lcg;->a:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcg;->b:Landroid/net/Uri;

    .line 31
    return-void
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->h(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->i(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->j(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->k(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcg;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->d(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->f(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcg;->a:Landroid/content/Context;

    iget-object v1, p0, Lcg;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcd;->g(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroid/support/v4/provider/DocumentFile;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
