.class public Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;
.super Lki$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lki$b",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingSortedMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingSortedMultiset;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;->a:Lcom/google/common/collect/ForwardingSortedMultiset;

    .line 71
    invoke-direct {p0, p1}, Lki$b;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 72
    return-void
.end method
