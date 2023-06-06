.class final Lcom/google/common/util/concurrent/AbstractFuture$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/AbstractFuture$j;


# instance fields
.field volatile b:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field volatile c:Lcom/google/common/util/concurrent/AbstractFuture$j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$j;-><init>(Z)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->c()Lcom/google/common/util/concurrent/AbstractFuture$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;Ljava/lang/Thread;)V

    .line 155
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Ljava/lang/Thread;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Ljava/lang/Thread;

    .line 170
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 172
    :cond_0
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->c()Lcom/google/common/util/concurrent/AbstractFuture$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 161
    return-void
.end method
