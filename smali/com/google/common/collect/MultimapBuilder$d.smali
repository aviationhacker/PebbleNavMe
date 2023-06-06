.class final Lcom/google/common/collect/MultimapBuilder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/Set",
        "<TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lhu;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MultimapBuilder$d;->a:I

    .line 241
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/google/common/collect/MultimapBuilder$d;->a:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$d;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
