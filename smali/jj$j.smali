.class final Ljj$j;
.super Ljj$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj$m",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 1

    .prologue
    .line 3788
    iput-object p1, p0, Ljj$j;->a:Ljj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$m;-><init>(Ljj$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3817
    iget-object v0, p0, Ljj$j;->a:Ljj;

    invoke-virtual {v0}, Ljj;->clear()V

    .line 3818
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Ljj$j;->a:Ljj;

    invoke-virtual {v0, p1}, Ljj;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3802
    iget-object v0, p0, Ljj$j;->a:Ljj;

    invoke-virtual {v0}, Ljj;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3792
    new-instance v0, Ljj$i;

    iget-object v1, p0, Ljj$j;->a:Ljj;

    invoke-direct {v0, v1}, Ljj$i;-><init>(Ljj;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3812
    iget-object v0, p0, Ljj$j;->a:Ljj;

    invoke-virtual {v0, p1}, Ljj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3797
    iget-object v0, p0, Ljj$j;->a:Ljj;

    invoke-virtual {v0}, Ljj;->size()I

    move-result v0

    return v0
.end method
