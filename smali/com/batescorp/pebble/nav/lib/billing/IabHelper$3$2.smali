.class Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 980
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;

    iget-object v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;

    iget-object v1, v1, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 983
    return-void
.end method
