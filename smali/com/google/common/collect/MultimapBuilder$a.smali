.class final Lcom/google/common/collect/MultimapBuilder$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/List",
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
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lhu;->a(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MultimapBuilder$a;->a:I

    .line 199
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/MultimapBuilder$a;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
