.class Lcom/google/common/collect/ImmutableMultimap$a;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/collect/ImmutableMultimap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Lcom/google/common/collect/ImmutableMultimap;

    .line 521
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 540
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 541
    check-cast p1, Ljava/util/Map$Entry;

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->c()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
