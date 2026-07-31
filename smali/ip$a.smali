.class Lip$a;
.super Lio$c;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio",
        "<TK;TV;>.c;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lip;


# direct methods
.method constructor <init>(Lip;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lip$a;->b:Lip;

    invoke-direct {p0, p1}, Lio$c;-><init>(Lio;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
