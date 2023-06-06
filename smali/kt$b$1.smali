.class Lkt$b$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic a:Lkt$b;


# direct methods
.method constructor <init>(Lkt$b;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkt$b$1;->a:Lkt$b;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lkt$b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lkt$b$1;->a()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
