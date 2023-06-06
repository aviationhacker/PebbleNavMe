.class public Lorg/eclipse/jetty/util/ssl/SslContextFactory;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"


# static fields
.field public static final DEFAULT_KEYMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

.field public static final DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

.field public static final DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

.field public static final KEYPASSWORD_PROPERTY:Ljava/lang/String; = "org.eclipse.jetty.ssl.keypassword"

.field public static final PASSWORD_PROPERTY:Ljava/lang/String; = "org.eclipse.jetty.ssl.password"

.field public static final TRUST_ALL_CERTS:[Ljavax/net/ssl/TrustManager;

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/security/KeyStore;

.field private H:Ljava/security/KeyStore;

.field private I:Z

.field private J:I

.field private K:I

.field private L:Ljavax/net/ssl/SSLContext;

.field private M:Z

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/io/InputStream;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/io/InputStream;

.field private o:Z

.field private p:Z

.field private q:Z

.field private transient r:Lorg/eclipse/jetty/util/security/Password;

.field private transient s:Lorg/eclipse/jetty/util/security/Password;

.field private transient t:Lorg/eclipse/jetty/util/security/Password;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/jetty/util/ssl/SslContextFactory$1;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->TRUST_ALL_CERTS:[Ljavax/net/ssl/TrustManager;

    .line 92
    const-class v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 94
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SunX509"

    :goto_0
    sput-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    .line 97
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SunX509"

    :goto_1
    sput-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

    return-void

    .line 94
    :cond_0
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    .line 114
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    .line 119
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    .line 126
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    .line 138
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->o:Z

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->p:Z

    .line 148
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->q:Z

    .line 160
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    .line 165
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    .line 167
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    .line 178
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    .line 180
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    .line 189
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->I:Z

    .line 207
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->M:Z

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    .line 114
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    .line 119
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    .line 126
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    .line 138
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->o:Z

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->p:Z

    .line 148
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->q:Z

    .line 160
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    .line 165
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    .line 167
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    .line 178
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    .line 180
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    .line 189
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->I:Z

    .line 229
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    .line 114
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    .line 119
    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    .line 126
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    .line 138
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->o:Z

    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->p:Z

    .line 148
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->q:Z

    .line 160
    const-string v0, "TLS"

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    .line 165
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    .line 167
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    .line 178
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    .line 180
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    .line 189
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->I:Z

    .line 219
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->M:Z

    .line 220
    return-void
.end method


# virtual methods
.method public varargs addExcludeCipherSuites([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 395
    return-void
.end method

.method public varargs addExcludeProtocols([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 339
    return-void
.end method

.method public checkKeyStore()V
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSL doesn\'t have a valid keystore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1175
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    .line 1176
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    .line 1178
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->l:Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->t:Lorg/eclipse/jetty/util/security/Password;

    .line 1181
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    .line 1185
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 1189
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1190
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1191
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1193
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    .line 1194
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected checkNotStarted()V
    .locals 3

    .prologue
    .line 1272
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify configuration when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_0
    return-void
.end method

.method public customize(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .prologue
    .line 1516
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 1521
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method protected doStart()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 247
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->M:Z

    if-eqz v0, :cond_b

    .line 249
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->TRUST_ALL_CERTS:[Ljavax/net/ssl/TrustManager;

    .line 254
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 255
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    .line 256
    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 305
    :cond_0
    :goto_2
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 264
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 265
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->loadTrustStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->C:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 269
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->z:Z

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 273
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    .line 277
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    move-object v0, v1

    .line 278
    :goto_4
    if-nez v0, :cond_7

    .line 280
    new-instance v1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No certificate found in the keystore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v1

    .line 274
    goto :goto_3

    .line 277
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_4

    .line 280
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for alias "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 283
    :cond_7
    new-instance v5, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-direct {v5, v3, v4}, Lorg/eclipse/jetty/util/security/CertificateValidator;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 284
    iget v6, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/security/CertificateValidator;->setMaxCertPathLength(I)V

    .line 285
    iget-boolean v6, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/security/CertificateValidator;->setEnableCRLDP(Z)V

    .line 286
    iget-boolean v6, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/security/CertificateValidator;->setEnableOCSP(Z)V

    .line 287
    iget-object v6, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->F:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/util/security/CertificateValidator;->setOcspResponderURL(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v5, v2, v0}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V

    .line 291
    :cond_8
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 292
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagers(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 295
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->u:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 298
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 300
    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Enabled Protocols {} of {}"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Enabled Ciphers   {} of {}"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 294
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_6

    .line 295
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->u:Ljava/lang/String;

    invoke-static {v0, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_7

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public getCertAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExcludeProtocols()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeCipherSuites()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeProtocols()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1075
    .line 1077
    if-eqz p1, :cond_4

    .line 1079
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 1080
    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->s:Lorg/eclipse/jetty/util/security/Password;

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1081
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    .line 1083
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1085
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_3

    .line 1087
    aget-object v0, v2, v1

    instance-of v0, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v0, :cond_0

    .line 1089
    new-instance v3, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    aget-object v0, v2, v1

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v3, v4, v0}, Lorg/eclipse/jetty/util/ssl/AliasedX509ExtendedKeyManager;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V

    aput-object v3, v2, v1

    .line 1085
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1080
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->s:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 1095
    :cond_4
    return-object v0
.end method

.method public getKeyStore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1053
    invoke-static {p1, p2, p3, p4, p5}, Lorg/eclipse/jetty/util/security/CertificateUtils;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 514
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKeyStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStoreProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    return v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->o:Z

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .prologue
    .line 987
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSessionCacheSize()I
    .locals 1

    .prologue
    .line 1420
    iget v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->J:I

    return v0
.end method

.method public getSslSessionTimeout()I
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->K:I

    return v0
.end method

.method public getTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    return-object v0
.end method

.method protected getTrustManagers(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;)[",
            "Ljavax/net/ssl/TrustManager;"
        }
    .end annotation

    .prologue
    .line 1101
    const/4 v0, 0x0

    .line 1102
    if-eqz p1, :cond_3

    .line 1105
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->A:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    const-string v1, "PKIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-direct {v0, p1, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 1110
    iget v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    .line 1113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 1115
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1117
    const-string v1, "Collection"

    new-instance v2, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v2, p2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 1120
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    if-eqz v1, :cond_1

    .line 1123
    const-string v1, "com.sun.security.enableCRLDP"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    if-eqz v1, :cond_2

    .line 1129
    const-string v1, "ocsp.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->F:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1134
    const-string v1, "ocsp.responderURL"

    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->F:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 1139
    new-instance v2, Ljavax/net/ssl/CertPathTrustManagerParameters;

    invoke-direct {v2, v0}, Ljavax/net/ssl/CertPathTrustManagerParameters;-><init>(Ljava/security/cert/CertPathParameters;)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 1141
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 1152
    :cond_3
    :goto_0
    return-object v0

    .line 1145
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 1146
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1148
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrustStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 626
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTrustStoreProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getValidateCerts()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->z:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->p:Z

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->q:Z

    return v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .prologue
    .line 1282
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    return v0
.end method

.method public isSessionCachingEnabled()Z
    .locals 1

    .prologue
    .line 1402
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->I:Z

    return v0
.end method

.method public isTrustAll()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->M:Z

    return v0
.end method

.method public isValidateCerts()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->z:Z

    return v0
.end method

.method public isValidatePeerCerts()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->A:Z

    return v0
.end method

.method protected loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
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
    .line 1069
    invoke-static {p1}, Lorg/eclipse/jetty/util/security/CertificateUtils;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected loadKeyStore()Ljava/security/KeyStore;
    .locals 6

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    if-nez v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected loadTrustStore()Ljava/security/KeyStore;
    .locals 6

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->l:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->t:Lorg/eclipse/jetty/util/security/Password;

    if-nez v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->t:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public newSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 1509
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->customize(Ljavax/net/ssl/SSLEngine;)V

    .line 1510
    return-object v0
.end method

.method public newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 1497
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isSessionCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 1501
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->customize(Ljavax/net/ssl/SSLEngine;)V

    .line 1502
    return-object v0

    .line 1497
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public newSslServerSocket(Ljava/lang/String;II)Ljavax/net/ssl/SSLServerSocket;
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    .line 1456
    if-nez p1, :cond_2

    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object v0

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 1461
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1462
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 1466
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1471
    return-object v0

    .line 1456
    :cond_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    goto :goto_0
.end method

.method public newSslSocket()Ljavax/net/ssl/SSLSocket;
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 1481
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1484
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 1486
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->selectProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 1491
    return-object v0
.end method

.method public selectCipherSuites([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1246
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1249
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1253
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1257
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1261
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1262
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1263
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public selectProtocols([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1214
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1217
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1221
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1225
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1229
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1230
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1232
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0

    .prologue
    .line 764
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 766
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->q:Z

    .line 767
    return-void
.end method

.method public setCertAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 549
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->j:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setCrlPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 953
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 955
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->C:Ljava/lang/String;

    .line 956
    return-void
.end method

.method public setEnableCRLDP(Z)V
    .locals 0

    .prologue
    .line 1291
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1293
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->D:Z

    .line 1294
    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0

    .prologue
    .line 1311
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1313
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->E:Z

    .line 1314
    return-void
.end method

.method public varargs setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 385
    return-void
.end method

.method public varargs setExcludeProtocols([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 328
    iget-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 329
    return-void
.end method

.method public varargs setIncludeCipherSuites([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 417
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->e:Ljava/util/Set;

    .line 418
    return-void
.end method

.method public varargs setIncludeProtocols([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 361
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->c:Ljava/util/Set;

    .line 362
    return-void
.end method

.method public setKeyManagerPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 790
    const-string v0, "org.eclipse.jetty.ssl.keypassword"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->s:Lorg/eclipse/jetty/util/security/Password;

    .line 791
    return-void
.end method

.method public setKeyStore(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 458
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setKeyStore(Ljava/security/KeyStore;)V
    .locals 0

    .prologue
    .line 1342
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1344
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->G:Ljava/security/KeyStore;

    .line 1345
    return-void
.end method

.method public setKeyStoreInputStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 528
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;

    .line 529
    return-void
.end method

.method public setKeyStorePassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 776
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 778
    const-string v0, "org.eclipse.jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->r:Lorg/eclipse/jetty/util/security/Password;

    .line 779
    return-void
.end method

.method public setKeyStorePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 445
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setKeyStoreProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 479
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->g:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setKeyStoreResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 3

    .prologue
    .line 1364
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1368
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->i:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    return-void

    .line 1370
    :catch_0
    move-exception v0

    .line 1372
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get resource input stream for resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 500
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->h:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0

    .prologue
    .line 976
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 978
    iput p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->B:I

    .line 979
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .prologue
    .line 661
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 663
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->o:Z

    .line 664
    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1331
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1333
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->F:Ljava/lang/String;

    .line 1334
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 846
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 848
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->v:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 823
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 825
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->u:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 871
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 873
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->w:Ljava/lang/String;

    .line 874
    return-void
.end method

.method public setSessionCachingEnabled(Z)V
    .locals 0

    .prologue
    .line 1411
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->I:Z

    .line 1412
    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .prologue
    .line 999
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1001
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->L:Ljavax/net/ssl/SSLContext;

    .line 1002
    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 892
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 894
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->x:Ljava/lang/String;

    .line 895
    return-void
.end method

.method public setSslSessionCacheSize(I)V
    .locals 0

    .prologue
    .line 1429
    iput p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->J:I

    .line 1430
    return-void
.end method

.method public setSslSessionTimeout(I)V
    .locals 0

    .prologue
    .line 1447
    iput p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->K:I

    .line 1448
    return-void
.end method

.method public setTrustAll(Z)V
    .locals 0

    .prologue
    .line 921
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->M:Z

    .line 922
    return-void
.end method

.method public setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 932
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 934
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->y:Ljava/lang/String;

    .line 935
    return-void
.end method

.method public setTrustStore(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 570
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setTrustStore(Ljava/security/KeyStore;)V
    .locals 0

    .prologue
    .line 1353
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1355
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->H:Ljava/security/KeyStore;

    .line 1356
    return-void
.end method

.method public setTrustStoreInputStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 640
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;

    .line 641
    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 802
    const-string v0, "org.eclipse.jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->t:Lorg/eclipse/jetty/util/security/Password;

    .line 803
    return-void
.end method

.method public setTrustStoreProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 589
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 591
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->l:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setTrustStoreResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 3

    .prologue
    .line 1383
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 1387
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->n:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    return-void

    .line 1389
    :catch_0
    move-exception v0

    .line 1391
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get resource input stream for resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 610
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 612
    iput-object p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->m:Ljava/lang/String;

    .line 613
    return-void
.end method

.method public setValidateCerts(Z)V
    .locals 0

    .prologue
    .line 716
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 718
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->z:Z

    .line 719
    return-void
.end method

.method public setValidatePeerCerts(Z)V
    .locals 0

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 739
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->A:Z

    .line 740
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .prologue
    .line 684
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkNotStarted()V

    .line 686
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->p:Z

    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1531
    const-string v0, "%s@%x(%s,%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
