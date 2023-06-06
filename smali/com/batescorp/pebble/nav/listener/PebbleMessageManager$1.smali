.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$1;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "PebbleMessageManager"

    const-string v1, "Please post() your blocking runnables to Mr Manager, don\'t use sendMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
