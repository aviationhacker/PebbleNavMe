.class Lcom/google/common/collect/Maps$x;
.super Lcom/google/common/collect/ForwardingMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V
    .locals 1
    .param p2    # Lcom/google/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<+TK;+TV;>;",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 1482
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$x;->a:Ljava/util/Map;

    .line 1483
    iput-object p1, p0, Lcom/google/common/collect/Maps$x;->b:Lcom/google/common/collect/BiMap;

    .line 1484
    iput-object p2, p0, Lcom/google/common/collect/Maps$x;->c:Lcom/google/common/collect/BiMap;

    .line 1485
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$x;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/google/common/collect/Maps$x;->a:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1494
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/google/common/collect/Maps$x;->c:Lcom/google/common/collect/BiMap;

    .line 1500
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$x;

    iget-object v1, p0, Lcom/google/common/collect/Maps$x;->b:Lcom/google/common/collect/BiMap;

    .line 1501
    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$x;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$x;->c:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$x;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/common/collect/Maps$x;->d:Ljava/util/Set;

    .line 1508
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$x;->b:Lcom/google/common/collect/BiMap;

    .line 1509
    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$x;->d:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
