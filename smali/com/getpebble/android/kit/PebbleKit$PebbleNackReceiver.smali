.class public abstract Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/PebbleKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PebbleNackReceiver"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 622
    iput-object p1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;->a:Ljava/util/UUID;

    .line 623
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 641
    const-string v0, "transaction_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;->receiveNack(Landroid/content/Context;I)V

    .line 644
    return-void
.end method

.method public abstract receiveNack(Landroid/content/Context;I)V
.end method
