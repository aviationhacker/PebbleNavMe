.class Lcom/batescorp/pebble/nav/MainActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/MainActivity;->a()V
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
    .line 220
    iput-object p1, p0, Lcom/batescorp/pebble/nav/MainActivity$3;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;)V
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hooray, IAB is fully set up!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
