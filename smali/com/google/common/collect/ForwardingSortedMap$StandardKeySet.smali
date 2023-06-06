.class public Lcom/google/common/collect/ForwardingSortedMap$StandardKeySet;
.super Lcom/google/common/collect/Maps$s;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$s",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ForwardingSortedMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingSortedMap;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/common/collect/ForwardingSortedMap$StandardKeySet;->a:Lcom/google/common/collect/ForwardingSortedMap;

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$s;-><init>(Ljava/util/SortedMap;)V

    .line 108
    return-void
.end method
