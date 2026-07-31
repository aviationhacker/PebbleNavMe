.class final Lkr$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkr;


# direct methods
.method private constructor <init>(Lkr;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lkr$a;->a:Lkr;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkr;Lkr$1;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lkr$a;-><init>(Lkr;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lkr$a;->a:Lkr;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lkr$a$1;

    iget-object v1, p0, Lkr$a;->a:Lkr;

    invoke-virtual {v1}, Lkr;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkr$a$1;-><init>(Lkr$a;Ljava/util/Iterator;)V

    return-object v0
.end method
