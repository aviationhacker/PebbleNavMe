.class public Lcom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lcom/google/common/collect/Sets$b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$b",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingNavigableSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableSet;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;->a:Lcom/google/common/collect/ForwardingNavigableSet;

    .line 166
    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$b;-><init>(Ljava/util/NavigableSet;)V

    .line 167
    return-void
.end method
