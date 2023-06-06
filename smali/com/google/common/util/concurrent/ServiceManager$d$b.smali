.class final Lcom/google/common/util/concurrent/ServiceManager$d$b;
.super Lcom/google/common/util/concurrent/Monitor$Guard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ServiceManager$d;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$d;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$d$b;->a:Lcom/google/common/util/concurrent/ServiceManager$d;

    .line 459
    iget-object v0, p1, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor$Guard;-><init>(Lcom/google/common/util/concurrent/Monitor;)V

    .line 460
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d$b;->a:Lcom/google/common/util/concurrent/ServiceManager$d;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d$b;->a:Lcom/google/common/util/concurrent/ServiceManager$d;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d$b;->a:Lcom/google/common/util/concurrent/ServiceManager$d;

    iget v1, v1, Lcom/google/common/util/concurrent/ServiceManager$d;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
