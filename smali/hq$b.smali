.class Lhq$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhq;


# direct methods
.method constructor <init>(Lhq;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lhq$b;->a:Lhq;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lhq$b;->a:Lhq;

    invoke-virtual {v0}, Lhq;->clear()V

    .line 199
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lhq$b;->a:Lhq;

    invoke-virtual {v0, p1}, Lhq;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 188
    iget-object v0, p0, Lhq$b;->a:Lhq;

    invoke-virtual {v0}, Lhq;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lhq$b;->a:Lhq;

    invoke-virtual {v0}, Lhq;->size()I

    move-result v0

    return v0
.end method
