.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 472
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 475
    const-string v0, "PebbleMessageManager"

    const-string v1, "CheckFlashTimerTask (Fire)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->n(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 477
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stopCheckFlashTimer()V

    .line 478
    return-void
.end method
