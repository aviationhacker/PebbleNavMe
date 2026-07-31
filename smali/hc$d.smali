.class Lhc$d;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lhc;


# direct methods
.method private constructor <init>(Lhc;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, Lhc$d;->b:Lhc;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 243
    iget-object v0, p0, Lhc$d;->b:Lhc;

    iget-object v0, v0, Lhc;->a:Lhc;

    invoke-virtual {v0}, Lhc;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lhc$d;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lhc;Lhc$1;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lhc$d;-><init>(Lhc;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lhc$d;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lhc$d;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lhc$d;->a:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lhc$d;->b:Lhc;

    invoke-virtual {v0}, Lhc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lhc$d;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lhc$d;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lhc$d;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
