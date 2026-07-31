.class public abstract Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/PebbleKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PebbleAckReceiver"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;->a:Ljava/util/UUID;

    .line 580
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 598
    const-string v0, "transaction_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;->receiveAck(Landroid/content/Context;I)V

    .line 601
    return-void
.end method

.method public abstract receiveAck(Landroid/content/Context;I)V
.end method
