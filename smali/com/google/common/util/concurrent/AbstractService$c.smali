.class final Lcom/google/common/util/concurrent/AbstractService$c;
.super Lcom/google/common/util/concurrent/Monitor$Guard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$c;->a:Lcom/google/common/util/concurrent/AbstractService;

    .line 118
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/Monitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor$Guard;-><init>(Lcom/google/common/util/concurrent/Monitor;)V

    .line 119
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$c;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
