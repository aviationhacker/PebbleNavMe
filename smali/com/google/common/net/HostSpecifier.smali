.class public final Lcom/google/common/net/HostSpecifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 5

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 122
    :catch_0
    move-exception v1

    .line 127
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Invalid host specifier: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {v2, v1}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 130
    throw v2

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    .locals 4

    .prologue
    .line 78
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    invoke-virtual {v1}, Lcom/google/common/net/HostAndPort;->getHostText()Ljava/lang/String;

    move-result-object v2

    .line 86
    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 93
    :goto_1
    if-eqz v1, :cond_1

    .line 94
    new-instance v0, Lcom/google/common/net/HostSpecifier;

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->toUriString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    .line 103
    :goto_2
    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 100
    :cond_1
    invoke-static {v2}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Lcom/google/common/net/HostSpecifier;

    invoke-virtual {v1}, Lcom/google/common/net/InternetDomainName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/net/HostSpecifier;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Domain name does not have a recognized public suffix: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/HostSpecifier;->fromValid(Ljava/lang/String;)Lcom/google/common/net/HostSpecifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    if-ne p0, p1, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 154
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/HostSpecifier;

    if-eqz v0, :cond_1

    .line 155
    check-cast p1, Lcom/google/common/net/HostSpecifier;

    .line 156
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/common/net/HostSpecifier;->a:Ljava/lang/String;

    return-object v0
.end method
