.class public Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;
.super Lcom/google/common/collect/Multisets$b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$b",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingMultiset;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;->a:Lcom/google/common/collect/ForwardingMultiset;

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
    .line 256
    iget-object v0, p0, Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;->a:Lcom/google/common/collect/ForwardingMultiset;

    return-object v0
.end method
