.class public Lorg/eclipse/jetty/http/EncodedHttpURI;
.super Lorg/eclipse/jetty/http/HttpURI;
.source "SourceFile"


# instance fields
.field private final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 4

    .prologue
    .line 153
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 162
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    iget-object p2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompletePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->m:I

    if-ne v0, v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->m:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDecodedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->decodePath([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->m:I

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->m:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->f:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->g:I

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->f:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->g:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->f:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    if-ne v0, v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->j:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathAndParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 83
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->g:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->g:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->i:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->g:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    if-ne v0, v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x70

    const/16 v4, 0x68

    const/16 v3, 0x74

    .line 44
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    sub-int/2addr v0, v1

    .line 47
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    if-ne v1, v5, :cond_1

    .line 52
    const-string v0, "http"

    goto :goto_0

    .line 53
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x73

    if-ne v0, v1, :cond_2

    .line 59
    const-string v0, "https"

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->e:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->l:I

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->k:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->b:[B

    iget v1, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    iget v2, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->m:I

    iget v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->d:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->c:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/EncodedHttpURI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Lorg/eclipse/jetty/util/Utf8StringBuffer;)V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/EncodedHttpURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    return-void
.end method
