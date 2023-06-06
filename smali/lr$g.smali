.class final Llr$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Llr$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llr$f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 357
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 358
    const-class v0, Llr$f;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 359
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Llr$f;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Llr$g;->a:Lcom/google/common/collect/ImmutableMap;

    .line 370
    return-void

    .line 362
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method constructor <init>(Llr$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llr$f",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Llr$g;->b:Llr$f;

    .line 376
    return-void
.end method

.method static synthetic a(Llr$g;)Llr$f;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Llr$g;->b:Llr$f;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 380
    sget-object v0, Llr$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 381
    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    :try_start_0
    iget-object v1, p0, Llr$g;->b:Llr$f;

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
