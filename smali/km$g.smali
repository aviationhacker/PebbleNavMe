.class Lkm$g;
.super Lkm$o;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "works but is needed only for NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$o;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1598
    invoke-direct {p0, p1, p2}, Lkm$o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1599
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1604
    invoke-super {p0}, Lkm$o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1594
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1609
    iget-object v1, p0, Lkm$g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1610
    :try_start_0
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1623
    iget-object v1, p0, Lkm$g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1624
    :try_start_0
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1630
    iget-object v1, p0, Lkm$g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1631
    :try_start_0
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1616
    iget-object v1, p0, Lkm$g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1617
    :try_start_0
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v1, p0, Lkm$g;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1638
    :try_start_0
    invoke-virtual {p0}, Lkm$g;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
