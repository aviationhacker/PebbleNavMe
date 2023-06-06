.class Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/CheckLicenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Inventory;)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    .line 149
    :goto_0
    return-void

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "application_product_key"

    invoke-virtual {p2, v0}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->c:Ljava/lang/String;

    .line 140
    const-string v0, "CheckLicenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v2, v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v2, v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a:Z

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    const-string v1, "pebble.nav.checkpaid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "PRICE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v2, v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "PAID"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v2, v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    goto :goto_0
.end method
