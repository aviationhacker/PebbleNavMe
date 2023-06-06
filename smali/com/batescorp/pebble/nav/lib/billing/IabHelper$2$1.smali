.class Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/lib/billing/IabResult;

.field final synthetic b:Lcom/batescorp/pebble/nav/lib/billing/Inventory;

.field final synthetic c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Inventory;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->b:Lcom/batescorp/pebble/nav/lib/billing/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;

    iget-object v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;->c:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2$1;->b:Lcom/batescorp/pebble/nav/lib/billing/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Inventory;)V

    .line 631
    return-void
.end method
