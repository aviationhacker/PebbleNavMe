.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c()V
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
    .line 159
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 166
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->j(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I

    .line 167
    const-string v0, "PebbleMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pebble - Nack : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->k(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->l(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$4;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
