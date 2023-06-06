.class Lcom/google/common/util/concurrent/AbstractService$5;
.super Lly$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lly$a",
        "<",
        "Lcom/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Service$State;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$5;->c:Lcom/google/common/util/concurrent/AbstractService;

    iput-object p3, p0, Lcom/google/common/util/concurrent/AbstractService$5;->a:Lcom/google/common/util/concurrent/Service$State;

    iput-object p4, p0, Lcom/google/common/util/concurrent/AbstractService$5;->b:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lly$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/Service$Listener;)V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$5;->a:Lcom/google/common/util/concurrent/Service$State;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$5;->b:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/Service$Listener;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    .line 510
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 507
    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$5;->a(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
