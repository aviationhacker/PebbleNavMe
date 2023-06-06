.class final Lku$a;
.super Lku;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lku;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;Lku$1;)V

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;Lku$1;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lku$a;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    invoke-super {p0, p1}, Lku;->b(Ljava/lang/Object;)V

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
