.class Lkl$g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkl$g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl$g$a;


# direct methods
.method constructor <init>(Lkl$g$a;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lkl$g$a$1;->a:Lkl$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lkl$g$a$1;->a:Lkl$g$a;

    iget-object v0, v0, Lkl$g$a;->a:Lkl$g;

    iget-object v0, v0, Lkl$g;->b:Lkl;

    invoke-virtual {v0, p1}, Lkl;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lkl$g$a$1;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
