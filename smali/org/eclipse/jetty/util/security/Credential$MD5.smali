.class public Lorg/eclipse/jetty/util/security/Credential$MD5;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field public static final __md5Lock:Ljava/lang/Object;

.field private static a:Ljava/security/MessageDigest; = null

.field private static final serialVersionUID:J = 0x4ccc2c1bfb42a250L


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 133
    const-string v0, "MD5:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MD5:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    .line 135
    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    sget-object v2, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 206
    :try_start_2
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :cond_0
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 216
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    const-string v3, "ISO-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 217
    sget-object v1, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 218
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MD5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 210
    :try_start_5
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 211
    monitor-exit v2

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 222
    :catch_1
    move-exception v1

    .line 224
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    .line 151
    :try_start_0
    instance-of v0, p1, [C

    if-eqz v0, :cond_c

    .line 152
    new-instance v0, Ljava/lang/String;

    check-cast p1, [C

    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 153
    :goto_0
    instance-of v3, v0, Lorg/eclipse/jetty/util/security/Password;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 155
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/util/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    sget-object v4, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    if-nez v4, :cond_1

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    sput-object v4, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    .line 158
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 159
    sget-object v4, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    sget-object v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 161
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    if-eqz v4, :cond_2

    :try_start_2
    array-length v0, v4

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    array-length v3, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v0, v3, :cond_3

    :cond_2
    move v0, v1

    .line 190
    :goto_1
    return v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move v0, v1

    .line 190
    goto :goto_1

    :cond_3
    move v0, v1

    .line 163
    :goto_2
    :try_start_5
    array-length v3, v4

    if-ge v0, v3, :cond_5

    .line 164
    aget-byte v3, v4, v0

    iget-object v5, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    aget-byte v5, v5, v0

    if-eq v3, v5, :cond_4

    move v0, v1

    goto :goto_1

    .line 163
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 165
    goto :goto_1

    .line 167
    :cond_6
    instance-of v3, v0, Lorg/eclipse/jetty/util/security/Credential$MD5;

    if-eqz v3, :cond_a

    .line 169
    check-cast v0, Lorg/eclipse/jetty/util/security/Credential$MD5;

    .line 170
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    array-length v3, v3

    iget-object v4, v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    array-length v4, v4

    if-eq v3, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v3, v1

    .line 171
    :goto_3
    iget-object v4, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    array-length v4, v4

    if-ge v3, v4, :cond_9

    .line 172
    iget-object v4, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    aget-byte v4, v4, v3

    iget-object v5, v0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_8

    move v0, v1

    goto :goto_1

    .line 171
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    .line 173
    goto :goto_1

    .line 175
    :cond_a
    instance-of v2, v0, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v2, :cond_b

    .line 179
    check-cast v0, Lorg/eclipse/jetty/util/security/Credential;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 183
    :cond_b
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " against MD5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v0, v1

    .line 184
    goto :goto_1

    :cond_c
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Credential$MD5;->b:[B

    return-object v0
.end method
