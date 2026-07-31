.class Lls$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lls$a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic c:Lls$a;


# direct methods
.method constructor <init>(Lls$a;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lls$a$1;->c:Lls$a;

    iput p2, p0, Lls$a$1;->a:I

    iput-object p3, p0, Lls$a$1;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lls$a$1;->c:Lls$a;

    iget v1, p0, Lls$a$1;->a:I

    iget-object v2, p0, Lls$a$1;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1, v2}, Lls$a;->a(Lls$a;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, p0, Lls$a$1;->c:Lls$a;

    invoke-static {v0}, Lls$a;->c(Lls$a;)V

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lls$a$1;->c:Lls$a;

    invoke-static {v1}, Lls$a;->c(Lls$a;)V

    throw v0
.end method
