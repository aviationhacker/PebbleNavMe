.class Lku;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lku$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private b:Lcom/google/common/eventbus/EventBus;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lku;->b:Lcom/google/common/eventbus/EventBus;

    .line 65
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lku;->a:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lku;->c:Ljava/lang/reflect/Method;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 69
    invoke-virtual {p1}, Lcom/google/common/eventbus/EventBus;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lku;->d:Ljava/util/concurrent/Executor;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;Lku$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lku;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic a(Lku;)Lcom/google/common/eventbus/EventBus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lku;->b:Lcom/google/common/eventbus/EventBus;

    return-object v0
.end method

.method static synthetic a(Lku;Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lku;->c(Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lku;
    .locals 2

    .prologue
    .line 45
    invoke-static {p2}, Lku;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lku;

    invoke-direct {v0, p0, p1, p2}, Lku;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lku$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lku$a;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/reflect/Method;Lku$1;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/google/common/eventbus/AllowConcurrentEvents;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Lcom/google/common/eventbus/SubscriberExceptionContext;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/eventbus/SubscriberExceptionContext;

    iget-object v1, p0, Lku;->b:Lcom/google/common/eventbus/EventBus;

    iget-object v2, p0, Lku;->a:Ljava/lang/Object;

    iget-object v3, p0, Lku;->c:Ljava/lang/reflect/Method;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/common/eventbus/SubscriberExceptionContext;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lku;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lku$1;

    invoke-direct {v1, p0, p1}, Lku$1;-><init>(Lku;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lku;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lku;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Method rejected target/argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Method became inaccessible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 104
    :cond_0
    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Lku;

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lku;

    .line 127
    iget-object v1, p0, Lku;->a:Ljava/lang/Object;

    iget-object v2, p1, Lku;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lku;->c:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lku;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lku;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lku;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
