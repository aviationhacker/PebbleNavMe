.class public Lorg/eclipse/jetty/util/MultiPartWriter;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# static fields
.field public static MULTIPART_MIXED:Ljava/lang/String;

.field public static MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_MIXED:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartWriter;->MULTIPART_MIXED:Ljava/lang/String;

    .line 39
    sget-object v0, Lorg/eclipse/jetty/util/MultiPartOutputStream;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartWriter;->MULTIPART_X_MIXED_REPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 45
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jetty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x24

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->a:Ljava/lang/String;

    .line 55
    iput-boolean v4, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 73
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    .line 74
    return-void
.end method

.method public endPart()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 109
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public startPart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 98
    return-void
.end method

.method public startPart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->out:Ljava/io/Writer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartWriter;->b:Z

    .line 132
    return-void
.end method
