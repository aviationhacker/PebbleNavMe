.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    .line 82
    iput p2, p0, Lcom/google/common/net/HostAndPort;->b:I

    .line 83
    iput-boolean p3, p0, Lcom/google/common/net/HostAndPort;->c:Z

    .line 84
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 312
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v6, 0x3a

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    .line 216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Bracketed host-port string must start with a bracket: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 219
    const/16 v3, 0x5d

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 220
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    if-le v3, v0, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "Invalid bracketed host/port: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 224
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 225
    new-array v0, v8, [Ljava/lang/String;

    aput-object v4, v0, v2

    const-string v2, ""

    aput-object v2, v0, v1

    .line 233
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    :cond_1
    move v0, v2

    .line 220
    goto :goto_1

    .line 227
    :cond_2
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v1

    :goto_3
    const-string v5, "Only a colon may follow a close bracket: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v3, 0x2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    const-string v6, "Port must be numeric: %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move v0, v2

    .line 227
    goto :goto_3

    .line 233
    :cond_4
    new-array v0, v8, [Ljava/lang/String;

    aput-object v4, v0, v2

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_2
.end method

.method public static fromHost(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Host has a port: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-object v3

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0
.end method

.method public static fromParts(Ljava/lang/String;I)Lcom/google/common/net/HostAndPort;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->a(I)Z

    move-result v0

    const-string v3, "Port out of range: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v3

    .line 136
    invoke-virtual {v3}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Host has a port: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, v3, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    iget-boolean v2, v3, Lcom/google/common/net/HostAndPort;->c:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 8

    .prologue
    const/16 v6, 0x3a

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v3, 0x0

    .line 173
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    aget-object v3, v0, v2

    .line 176
    aget-object v0, v0, v1

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    .line 191
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 194
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    :goto_1
    const-string v6, "Unparseable port number: %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    invoke-static {v3}, Lcom/google/common/net/HostAndPort;->a(I)Z

    move-result v5

    const-string v6, "Port number out of range: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v5, v6, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 203
    :goto_2
    new-instance v2, Lcom/google/common/net/HostAndPort;

    invoke-direct {v2, v4, v1, v0}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v2

    .line 178
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 179
    if-ltz v0, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 181
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 182
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    goto :goto_0

    .line 186
    :cond_1
    if-ltz v0, :cond_2

    move v0, v1

    :goto_3
    move-object v4, p0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v5, v2

    .line 194
    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparseable port number: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v1, v5

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    if-ne p0, p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    instance-of v2, p1, Lcom/google/common/net/HostAndPort;

    if-eqz v2, :cond_3

    .line 281
    check-cast p1, Lcom/google/common/net/HostAndPort;

    .line 282
    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/common/net/HostAndPort;->b:I

    iget v3, p1, Lcom/google/common/net/HostAndPort;->b:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->c:Z

    iget-boolean v3, p1, Lcom/google/common/net/HostAndPort;->c:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 286
    goto :goto_0
.end method

.method public getHostText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    iget v0, p0, Lcom/google/common/net/HostAndPort;->b:I

    return v0
.end method

.method public getPortOrDefault(I)I
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/google/common/net/HostAndPort;->b:I

    :cond_0
    return p1
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/common/net/HostAndPort;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public requireBracketsForIPv6()Lcom/google/common/net/HostAndPort;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/google/common/net/HostAndPort;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Possible bracketless IPv6 literal: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-object p0

    :cond_0
    move v0, v2

    .line 271
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 300
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public withDefaultPort(I)Lcom/google/common/net/HostAndPort;
    .locals 3

    .prologue
    .line 248
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/net/HostAndPort;->b:I

    if-ne v0, p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->c:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    move-object p0, v0

    goto :goto_0
.end method
