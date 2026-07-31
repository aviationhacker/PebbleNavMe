.class Lhj$a;
.super Lcom/google/common/collect/Multisets$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$b",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhj;


# direct methods
.method constructor <init>(Lhj;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lhj$a;->a:Lhj;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lhj$a;->a:Lhj;

    return-object v0
.end method
