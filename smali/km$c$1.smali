.class Lkm$c$1;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Ljava/util/Collection",
        "<TV;>;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkm$c;


# direct methods
.method constructor <init>(Lkm$c;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lkm$c$1;->a:Lkm$c;

    invoke-direct {p0, p2}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1259
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lkm$c$1;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1262
    iget-object v0, p0, Lkm$c$1;->a:Lkm$c;

    iget-object v0, v0, Lkm$c;->h:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkm;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
