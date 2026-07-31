.class Lcom/batescorp/pebble/nav/MainActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/MainActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/batescorp/pebble/nav/MainActivity$4;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V
    .locals 4

    .prologue
    .line 236
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIabPurchaseFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error purchasing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application_product_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "MainActivity"

    const-string v1, "Wohoo paid for"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity$4;->a:Lcom/batescorp/pebble/nav/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/MainActivity$4;->a:Lcom/batescorp/pebble/nav/MainActivity;

    const-class v3, Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
