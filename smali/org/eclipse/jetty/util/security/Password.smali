.class public Lorg/eclipse/jetty/util/security/Password;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "SourceFile"


# static fields
.field public static final __OBFUSCATE:Ljava/lang/String; = "OBF:"

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final serialVersionUID:J = 0x46430ecd65ae3425L


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/Password;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/Password;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    .line 76
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    const-string v1, "OBF:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Password;->deobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public static deobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v0, "OBF:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 189
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 191
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 192
    const/16 v5, 0x24

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 193
    div-int/lit16 v5, v3, 0x100

    .line 194
    rem-int/lit16 v6, v3, 0x100

    .line 195
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v5, v6

    add-int/lit16 v5, v5, -0xfe

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 189
    add-int/lit8 v0, v0, 0x4

    move v2, v3

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;
    .locals 5

    .prologue
    .line 218
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 223
    :cond_0
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, " [dft]"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 225
    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 226
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 227
    if-lez v2, :cond_1

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, p2

    .line 235
    :cond_3
    new-instance v1, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 223
    :cond_4
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 231
    sget-object v2, Lorg/eclipse/jetty/util/security/Password;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 244
    array-length v2, p0

    if-eq v2, v0, :cond_0

    array-length v2, p0

    if-eq v2, v5, :cond_0

    .line 246
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Usage - java org.eclipse.jetty.security.Password [<user>] <password>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "If the password is ?, the user will be prompted for the password"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 250
    :cond_0
    array-length v2, p0

    if-ne v2, v0, :cond_1

    move v0, v1

    :cond_1
    aget-object v0, p0, v0

    .line 251
    new-instance v2, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    .line 252
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/security/Password;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Credential$MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    array-length v0, p0

    if-ne v0, v5, :cond_2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v1, p0, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/security/Credential$Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_2
    return-void
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x30

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 146
    const-string v0, "OBF:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 149
    aget-byte v3, v2, v0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, v2, v4

    .line 151
    add-int/lit8 v5, v3, 0x7f

    add-int/2addr v5, v4

    .line 152
    add-int/lit8 v3, v3, 0x7f

    sub-int/2addr v3, v4

    .line 153
    mul-int/lit16 v4, v5, 0x100

    add-int/2addr v3, v4

    .line 154
    const/16 v4, 0x24

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    :pswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 97
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 99
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 105
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 107
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    .line 120
    instance-of v2, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v2, :cond_3

    .line 122
    check-cast p1, Lorg/eclipse/jetty/util/security/Password;

    .line 124
    iget-object v2, p1, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 127
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toStarString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const-string v0, "*****************************************************"

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->b:Ljava/lang/String;

    return-object v0
.end method
