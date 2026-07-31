.class public Lorg/eclipse/jetty/http/HttpException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 31
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 38
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    .line 39
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 45
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    .line 46
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/http/HttpException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    return v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpException("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpException;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpException;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
