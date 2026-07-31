.class Lhq$1;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhq;->d()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhq;


# direct methods
.method constructor <init>(Lhq;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lhq$1;->a:Lhq;

    invoke-direct {p0, p2}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lhq$1;->a(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
