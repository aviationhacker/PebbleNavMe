.class Lku$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lku;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lku;


# direct methods
.method constructor <init>(Lku;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lku$1;->b:Lku;

    iput-object p2, p0, Lku$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lku$1;->b:Lku;

    iget-object v1, p0, Lku$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lku;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    iget-object v1, p0, Lku$1;->b:Lku;

    invoke-static {v1}, Lku;->a(Lku;)Lcom/google/common/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lku$1;->b:Lku;

    iget-object v3, p0, Lku$1;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lku;->a(Lku;Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/eventbus/EventBus;->a(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V

    goto :goto_0
.end method
