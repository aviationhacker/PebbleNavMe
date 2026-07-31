.class public Lorg/eclipse/jetty/util/Utf8StringBuilder;
.super Lorg/eclipse/jetty/util/Utf8Appendable;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method


# virtual methods
.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->checkState()V

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->reset()V

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->checkState()V

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuilder;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
