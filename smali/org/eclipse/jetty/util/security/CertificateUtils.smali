.class public Lorg/eclipse/jetty/util/security/CertificateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    .line 36
    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    .line 41
    :cond_0
    if-nez p0, :cond_1

    .line 43
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 46
    :cond_1
    if-eqz p3, :cond_3

    .line 48
    invoke-static {p2, p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 55
    :goto_0
    if-nez p4, :cond_4

    :goto_1
    invoke-virtual {v1, p0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz p0, :cond_6

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 66
    :cond_2
    :goto_2
    return-object v0

    .line 52
    :cond_3
    :try_start_1
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_5

    .line 61
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public static loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 74
    if-eqz p0, :cond_0

    .line 79
    :try_start_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 80
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 84
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 91
    :cond_0
    return-object v0

    .line 84
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    .line 84
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
