.class final Ljt$b;
.super Lcom/google/common/collect/Multisets$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$e",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Multisets$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multisets$e",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lcom/google/common/collect/Multisets$e",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Multisets$e;-><init>(Ljava/lang/Object;I)V

    .line 101
    iput-object p3, p0, Ljt$b;->a:Lcom/google/common/collect/Multisets$e;

    .line 102
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multisets$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multisets$e",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Ljt$b;->a:Lcom/google/common/collect/Multisets$e;

    return-object v0
.end method
