.class Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iput-boolean p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->a:Z

    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 614
    new-instance v1, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 615
    const/4 v0, 0x0

    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-boolean v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->a:Z

    iget-object v4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/batescorp/pebble/nav/lib/billing/Inventory;
    :try_end_0
    .catch Lcom/batescorp/pebble/nav/lib/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 623
    :goto_0
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 627
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-boolean v2, v2, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->d:Landroid/os/Handler;

    new-instance v3, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_0
    return-void

    .line 619
    :catch_0
    move-exception v1

    .line 620
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/lib/billing/IabException;->getResult()Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    move-result-object v1

    goto :goto_0
.end method
