.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 462
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 465
    const-string v0, "PebbleMessageManager"

    const-string v1, "MessageSendTimeout (Fire)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$b;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->m(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 467
    return-void
.end method
