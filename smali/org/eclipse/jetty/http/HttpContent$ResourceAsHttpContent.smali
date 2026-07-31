.class public Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceAsHttpContent"
.end annotation


# static fields
.field private static final e:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field final a:Lorg/eclipse/jetty/util/resource/Resource;

.field final b:Lorg/eclipse/jetty/io/Buffer;

.field final c:I

.field final d:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->e:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    .line 81
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->b:Lorg/eclipse/jetty/io/Buffer;

    .line 82
    iput p3, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->c:I

    .line 83
    if-eqz p4, :cond_0

    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->d:Lorg/eclipse/jetty/io/Buffer;

    .line 84
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    .line 75
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->b:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getETag()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->d:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->c:I

    int-to-long v2, v2

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 129
    :cond_0
    if-eqz v1, :cond_1

    .line 133
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 138
    :cond_2
    :goto_1
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    sget-object v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->e:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_3
    :try_start_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 119
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->readFrom(Ljava/io/InputStream;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v1, :cond_2

    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 135
    :catch_1
    move-exception v1

    .line 137
    sget-object v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->e:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    .line 125
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 133
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 138
    :cond_4
    :goto_2
    throw v0

    .line 135
    :catch_3
    move-exception v1

    .line 137
    sget-object v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->e:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Couldn\'t close inputStream. Possible file handle leak"

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;->a:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 165
    return-void
.end method
