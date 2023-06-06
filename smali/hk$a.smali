.class final Lhk$a;
.super Lcom/google/common/collect/Maps$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhk;


# direct methods
.method private constructor <init>(Lhk;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lhk$a;->a:Lhk;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhk;Lhk$1;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lhk$a;-><init>(Lhk;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lhk$a;->a:Lhk;

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
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
    .line 175
    iget-object v0, p0, Lhk$a;->a:Lhk;

    invoke-virtual {v0}, Lhk;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
