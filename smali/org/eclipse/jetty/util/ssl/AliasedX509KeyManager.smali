.class public Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    .line 51
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509KeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
