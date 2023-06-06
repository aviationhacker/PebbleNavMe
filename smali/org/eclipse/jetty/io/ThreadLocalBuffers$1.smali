.class Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/io/ThreadLocalBuffers;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/ThreadLocalBuffers;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;->a:Lorg/eclipse/jetty/io/ThreadLocalBuffers;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;->a()Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    move-result-object v0

    return-object v0
.end method
