.class public Lorg/eclipse/jetty/websocket/RandomMaskGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/MaskGen;


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/RandomMaskGen;-><init>(Ljava/util/Random;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/RandomMaskGen;->a:Ljava/util/Random;

    .line 36
    return-void
.end method


# virtual methods
.method public genMask([B)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/RandomMaskGen;->a:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 44
    return-void
.end method
