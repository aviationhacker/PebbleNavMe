.class Lcom/google/common/collect/ImmutableMultimap$2;
.super Lcom/google/common/collect/ImmutableMultimap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultimap;->m()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMultimap",
        "<TK;TV;>.c<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 651
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$2;->a:Lcom/google/common/collect/ImmutableMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultimap$c;-><init>(Lcom/google/common/collect/ImmutableMultimap;Lcom/google/common/collect/ImmutableMultimap$1;)V

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 654
    return-object p2
.end method
