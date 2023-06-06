.class Lcom/google/common/io/LineReader$1;
.super Lli;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/LineReader;


# direct methods
.method constructor <init>(Lcom/google/common/io/LineReader;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/common/io/LineReader$1;->a:Lcom/google/common/io/LineReader;

    invoke-direct {p0}, Lli;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/common/io/LineReader$1;->a:Lcom/google/common/io/LineReader;

    invoke-static {v0}, Lcom/google/common/io/LineReader;->a(Lcom/google/common/io/LineReader;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method
