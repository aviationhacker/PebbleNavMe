.class final Lkt$b;
.super Lkt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkt$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Queue",
            "<",
            "Lkt$b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lkt;-><init>()V

    .line 87
    new-instance v0, Lkt$b$1;

    invoke-direct {v0, p0}, Lkt$b$1;-><init>(Lkt$b;)V

    iput-object v0, p0, Lkt$b;->a:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lkt$b$2;

    invoke-direct {v0, p0}, Lkt$b$2;-><init>(Lkt$b;)V

    iput-object v0, p0, Lkt$b;->b:Ljava/lang/ThreadLocal;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lkt$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lkt$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lkt$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 111
    new-instance v1, Lkt$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lkt$b$a;-><init>(Ljava/lang/Object;Ljava/util/Iterator;Lkt$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lkt$b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lkt$b;->b:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 117
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkt$b$a;

    if-eqz v1, :cond_1

    .line 118
    :goto_0
    invoke-static {v1}, Lkt$b$a;->a(Lkt$b$a;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {v1}, Lkt$b$a;->a(Lkt$b$a;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lku;

    invoke-static {v1}, Lkt$b$a;->b(Lkt$b$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lku;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkt$b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 124
    iget-object v1, p0, Lkt$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0

    .line 123
    :cond_1
    iget-object v0, p0, Lkt$b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 124
    iget-object v0, p0, Lkt$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 127
    :cond_2
    return-void
.end method
