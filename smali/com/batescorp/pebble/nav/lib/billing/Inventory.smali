.class public Lcom/batescorp/pebble/nav/lib/billing/Inventory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/batescorp/pebble/nav/lib/billing/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;

    .line 74
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    return-object v1
.end method

.method a(Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method a(Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/batescorp/pebble/nav/lib/billing/Purchase;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
