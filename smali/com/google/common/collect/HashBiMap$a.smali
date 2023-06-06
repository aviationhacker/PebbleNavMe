.class final Lcom/google/common/collect/HashBiMap$a;
.super Lix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lix",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field c:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field d:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p3}, Lix;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput p2, p0, Lcom/google/common/collect/HashBiMap$a;->a:I

    .line 98
    iput p4, p0, Lcom/google/common/collect/HashBiMap$a;->b:I

    .line 99
    return-void
.end method
