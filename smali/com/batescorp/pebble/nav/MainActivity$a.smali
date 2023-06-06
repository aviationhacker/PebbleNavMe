.class Lcom/batescorp/pebble/nav/MainActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/MainActivity;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/MainActivity;)V
    .locals 2

    .prologue
    .line 558
    iput-object p1, p0, Lcom/batescorp/pebble/nav/MainActivity$a;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 559
    const-string v0, "MainActivity"

    const-string v1, "Instantiated InitializationReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/MainActivity;Lcom/batescorp/pebble/nav/MainActivity$1;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/MainActivity$a;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 565
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PAID"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Price - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PRICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity$a;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/MainActivity;->checkLicense()V

    .line 569
    return-void
.end method
