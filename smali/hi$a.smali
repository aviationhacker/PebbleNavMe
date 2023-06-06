.class Lhi$a;
.super Lcom/google/common/collect/Multimaps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhi;


# direct methods
.method private constructor <init>(Lhi;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhi$a;->a:Lhi;

    invoke-direct {p0}, Lcom/google/common/collect/Multimaps$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhi;Lhi$1;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lhi$a;-><init>(Lhi;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lhi$a;->a:Lhi;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
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
    .line 129
    iget-object v0, p0, Lhi$a;->a:Lhi;

    invoke-virtual {v0}, Lhi;->h()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
