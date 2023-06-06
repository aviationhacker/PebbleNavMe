.class public Lorg/eclipse/jetty/websocket/FragmentExtension;
.super Lorg/eclipse/jetty/websocket/AbstractExtension;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "fragment"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/AbstractExtension;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 7

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-super/range {p0 .. p5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    move v4, p4

    move v2, p2

    .line 57
    :goto_1
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    if-le p5, v1, :cond_1

    .line 59
    add-int/lit8 v6, v0, 0x1

    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->finMask()B

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    int-to-byte v1, v0

    iget v5, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    move-object v0, p0

    move-object v3, p3

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 61
    iget v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    sub-int/2addr p5, v0

    .line 62
    iget v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    add-int/2addr v4, v0

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->continuationOpcode()B

    move-result v2

    move v0, v6

    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->b:I

    if-ge v0, v1, :cond_2

    .line 68
    div-int/lit8 v5, p5, 0x2

    .line 69
    add-int/lit8 v6, v0, 0x1

    .line 70
    and-int/lit8 v0, p1, 0x7

    int-to-byte v1, v0

    move-object v0, p0

    move-object v3, p3

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 71
    sub-int/2addr p5, v5

    .line 72
    add-int/2addr v4, v5

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->continuationOpcode()B

    move-result v2

    move v0, v6

    .line 74
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->finMask()B

    move-result v0

    or-int/2addr v0, p1

    int-to-byte v1, v0

    move-object v0, p0

    move-object v3, p3

    move v5, p5

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto :goto_0
.end method

.method public init(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Lorg/eclipse/jetty/websocket/AbstractExtension;->init(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "maxLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->a:I

    .line 40
    const-string v0, "minFragments"

    iget v1, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->b:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/FragmentExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/FragmentExtension;->b:I

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
