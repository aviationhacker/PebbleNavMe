.class Lorg/eclipse/jetty/io/nio/SelectorManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/SelectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/nio/channels/SelectableChannel;

.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$b;->a:Ljava/nio/channels/SelectableChannel;

    .line 1010
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager$b;->b:Ljava/lang/Object;

    .line 1011
    return-void
.end method
