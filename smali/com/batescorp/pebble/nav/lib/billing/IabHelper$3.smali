.class Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 960
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 961
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;

    .line 963
    :try_start_0
    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-virtual {v3, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    .line 964
    new-instance v3, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/batescorp/pebble/nav/lib/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabException;->getResult()Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 972
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-boolean v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$1;

    invoke-direct {v2, p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$1;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-boolean v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;

    invoke-direct {v2, p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    :cond_2
    return-void
.end method
