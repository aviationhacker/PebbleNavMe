.class final Lcom/google/common/base/Throwables$1;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Throwables;->a(Ljava/lang/Throwable;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/common/base/Throwables$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/StackTraceElement;
    .locals 5

    .prologue
    .line 279
    invoke-static {}, Lcom/google/common/base/Throwables;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Throwables;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/base/Throwables$1;->a:Ljava/lang/Throwable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Throwables;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/common/base/Throwables$1;->a(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 284
    invoke-static {}, Lcom/google/common/base/Throwables;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Throwables;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/base/Throwables$1;->a:Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Throwables;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
