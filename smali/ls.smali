.class public abstract Lls;
.super Lcom/google/common/util/concurrent/AbstractFuture$g;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lls$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$g",
        "<TOutputT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lls$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls",
            "<TInputT;TOutputT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lls;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lls;->a:Ljava/util/logging/Logger;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$g;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic a(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lls;->b(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lls;Z)Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$g;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 286
    :goto_0
    if-eqz p1, :cond_1

    .line 287
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 288
    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 298
    :goto_1
    return v0

    .line 286
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic i()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lls;->a:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture$g;->a()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lls;->b:Lls$a;

    .line 55
    return-void
.end method

.method protected final a(Lls$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls",
            "<TInputT;TOutputT;>.a;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lls;->b:Lls$a;

    .line 87
    invoke-static {p1}, Lls$a;->b(Lls$a;)V

    .line 88
    return-void
.end method

.method public final cancel(Z)Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lls;->b:Lls$a;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lls$a;->a(Lls$a;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    .line 64
    :goto_0
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$g;->cancel(Z)Z

    move-result v2

    .line 66
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_2

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 71
    :cond_2
    return v2
.end method

.method protected final interruptTask()V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Interruption not supported"
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lls;->b:Lls$a;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lls$a;->c()V

    .line 80
    :cond_0
    return-void
.end method
