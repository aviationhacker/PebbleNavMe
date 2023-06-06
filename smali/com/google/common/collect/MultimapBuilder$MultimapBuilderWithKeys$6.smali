.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;
.super Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->enumSetValues(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder",
        "<TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    iput-object p2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$b;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->a:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/common/collect/MultimapBuilder$b;-><init>(Ljava/lang/Class;)V

    .line 416
    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$6;->b:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Multimaps;->newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method
