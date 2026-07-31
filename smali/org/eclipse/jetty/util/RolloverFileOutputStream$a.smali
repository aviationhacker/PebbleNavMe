.class Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/RolloverFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;Lorg/eclipse/jetty/util/RolloverFileOutputStream$1;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;-><init>(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->a(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V

    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/util/RolloverFileOutputStream$a;->a:Lorg/eclipse/jetty/util/RolloverFileOutputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/RolloverFileOutputStream;->b(Lorg/eclipse/jetty/util/RolloverFileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
