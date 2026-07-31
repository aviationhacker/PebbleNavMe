.class final Ljj$d;
.super Ljj$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj",
        "<TK;TV;>.h<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 0

    .prologue
    .line 3779
    iput-object p1, p0, Ljj$d;->a:Ljj;

    invoke-direct {p0, p1}, Ljj$h;-><init>(Ljj;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3783
    invoke-virtual {p0}, Ljj$d;->e()Ljj$ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3779
    invoke-virtual {p0}, Ljj$d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
