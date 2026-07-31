.class Lcom/batescorp/pebble/nav/service/NavProcessingService$d;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

.field private b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$a;)V
    .locals 2

    .prologue
    .line 673
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 672
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->c:J

    .line 674
    iput-object p2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    .line 675
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 677
    const-string v0, "NavProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockScreenTask - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    .line 680
    sget-object v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$1;->b:[I

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 704
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 707
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->startActivity(Landroid/content/Intent;)V

    .line 712
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 713
    const-string v0, "NavProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockScreenTask - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - release lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 715
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Lcom/batescorp/pebble/nav/service/NavProcessingService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    const/16 v1, 0x3a98

    .line 721
    const/16 v0, 0x7530

    .line 722
    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->tryQuickLock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 723
    const/16 v1, 0x64

    .line 724
    const/16 v0, 0x2710

    .line 727
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 728
    const-string v3, "NavProcessingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockScreenTask - sleep current - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v3, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 730
    const-string v1, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockScreenTask - sleep after - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v4}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 732
    int-to-long v0, v0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :try_start_2
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 745
    :goto_1
    const-string v0, "NavProcessingService"

    const-string v1, "lockScreenTask - done "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    .line 748
    :cond_4
    return-void

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Z

    move-result v0

    goto/16 :goto_0

    .line 685
    :pswitch_1
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->b(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Z

    move-result v1

    .line 686
    const-string v2, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSpeedTask (active) - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-eqz v1, :cond_0

    .line 688
    iget-wide v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 689
    const-string v1, "NavProcessingService"

    const-string v2, "sendSpeedTask (active) - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->c:J

    goto/16 :goto_0

    .line 692
    :cond_5
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSpeedTask (active/since) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 695
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    :try_start_3
    const-string v1, "NavProcessingService"

    const-string v3, "lockScreenTask - Sleep failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    :try_start_4
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 739
    :catch_1
    move-exception v0

    .line 740
    const-string v1, "NavProcessingService"

    const-string v2, "lockScreenTask - Settings failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 736
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_off_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    throw v0
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 743
    :cond_6
    const-string v0, "NavProcessingService"

    const-string v1, "lockScreenTask - No Write permissions - "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
