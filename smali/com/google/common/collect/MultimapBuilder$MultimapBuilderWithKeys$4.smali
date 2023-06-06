.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;
.super Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues(I)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
        "<TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 372
    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$d;

    iget v2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$4;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$d;-><init>(I)V

    .line 371
    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
