.class Lhz$c;
.super Lcom/google/common/collect/ForwardingListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhy",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lhy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingListIterator;-><init>()V

    .line 292
    iput-object p1, p0, Lhz$c;->a:Ljava/util/ListIterator;

    .line 293
    iput-object p2, p0, Lhz$c;->b:Lhy;

    .line 294
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lhz$c;->b:Lhy;

    invoke-interface {v0, p1}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lhz$c;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lhz$c;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lhz$c;->delegate()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lhz$c;->a:Ljava/util/ListIterator;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lhz$c;->b:Lhy;

    invoke-interface {v0, p1}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lhz$c;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 311
    return-void
.end method
