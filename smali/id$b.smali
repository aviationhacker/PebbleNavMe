.class final Lid$b;
.super Lid$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lid$c",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lid;


# direct methods
.method private constructor <init>(Lid;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lid$b;->a:Lid;

    .line 211
    invoke-static {p1}, Lid;->d(Lid;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lid$c;-><init>(I)V

    .line 212
    return-void
.end method

.method synthetic constructor <init>(Lid;Lid$1;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lid$b;-><init>(Lid;)V

    return-void
.end method


# virtual methods
.method synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lid$b;->b(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method b(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lid$a;

    iget-object v1, p0, Lid$b;->a:Lid;

    invoke-direct {v0, v1, p1}, Lid$a;-><init>(Lid;I)V

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method b_()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lid$b;->a:Lid;

    invoke-static {v0}, Lid;->b(Lid;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
