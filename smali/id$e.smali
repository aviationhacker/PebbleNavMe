.class final Lid$e;
.super Lid$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lid$c",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lid;


# direct methods
.method private constructor <init>(Lid;)V
    .locals 1

    .prologue
    .line 188
    iput-object p1, p0, Lid$e;->a:Lid;

    .line 189
    invoke-static {p1}, Lid;->a(Lid;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lid$c;-><init>(I)V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lid;Lid$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lid$e;-><init>(Lid;)V

    return-void
.end method


# virtual methods
.method synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lid$e;->b(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method b(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lid$d;

    iget-object v1, p0, Lid$e;->a:Lid;

    invoke-direct {v0, v1, p1}, Lid$d;-><init>(Lid;I)V

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method b_()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lid$e;->a:Lid;

    invoke-static {v0}, Lid;->e(Lid;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
