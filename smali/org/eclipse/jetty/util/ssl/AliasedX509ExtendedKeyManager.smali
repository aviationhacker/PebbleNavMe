.class public Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    .line 53
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2, p3}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;->b:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
