.class public Lorg/eclipse/jetty/util/security/CertificateValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private c:Ljava/security/KeyStore;

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->e:I

    .line 66
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->f:Z

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->g:Z

    .line 80
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TrustStore must be specified for CertificateValidator."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->c:Ljava/security/KeyStore;

    .line 86
    iput-object p2, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->d:Ljava/util/Collection;

    .line 87
    return-void
.end method


# virtual methods
.method public getCrls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->e:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->c:Ljava/security/KeyStore;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->f:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->g:Z

    return v0
.end method

.method public setEnableCRLDP(Z)V
    .locals 0

    .prologue
    .line 305
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->f:Z

    .line 306
    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0

    .prologue
    .line 323
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->g:Z

    .line 324
    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->e:I

    .line 288
    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->h:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object p2

    .line 134
    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lorg/eclipse/jetty/util/security/CertificateValidator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 137
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to validate certificate for alias ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public validate(Ljava/security/KeyStore;)V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Unable to retrieve aliases from keystore"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_0
    return-void
.end method

.method public validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    .locals 11

    .prologue
    .line 155
    .line 157
    if-eqz p2, :cond_5

    instance-of v2, p2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_5

    move-object v2, p2

    .line 159
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 161
    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 166
    :try_start_0
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v4, "Keystore cannot be null"

    invoke-direct {v2, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 184
    :goto_0
    sget-object v4, Lorg/eclipse/jetty/util/security/CertificateValidator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 185
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to validate certificate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 169
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    invoke-virtual {p1, v2}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 170
    if-nez v3, :cond_1

    .line 172
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JETTY"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%016X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lorg/eclipse/jetty/util/security/CertificateValidator;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p1, v3, p2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 176
    :cond_1
    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_4

    .line 179
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to retrieve certificate chain"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    :catch_1
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_0

    .line 185
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " for alias ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    .line 191
    :cond_5
    return-void
.end method

.method public validate([Ljava/security/cert/Certificate;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 197
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 200
    if-nez v0, :cond_0

    .line 198
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_0
    instance-of v4, v0, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid certificate type in chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    sget-object v1, Lorg/eclipse/jetty/util/security/CertificateValidator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 256
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 208
    :cond_1
    :try_start_1
    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 221
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->c:Ljava/security/KeyStore;

    invoke-direct {v0, v3, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 222
    const-string v1, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 225
    iget v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->e:I

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 231
    iget-object v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->d:Ljava/util/Collection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    const-string v1, "Collection"

    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->d:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 237
    :cond_4
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->g:Z

    if-eqz v1, :cond_5

    .line 239
    const-string v1, "ocsp.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_5
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->f:Z

    if-eqz v1, :cond_6

    .line 244
    const-string v1, "com.sun.security.enableCRLDP"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    :cond_6
    const-string v1, "PKIX"

    invoke-static {v1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    .line 251
    const-string v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    return-void
.end method
