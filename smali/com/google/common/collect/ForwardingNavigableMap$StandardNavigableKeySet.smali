.class public Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardNavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->a:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 334
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$q;-><init>(Ljava/util/NavigableMap;)V

    .line 335
    return-void
.end method
