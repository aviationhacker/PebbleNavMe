.class Lhi$b;
.super Lhi$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhi",
        "<TK;TV;>.a;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lhi;


# direct methods
.method private constructor <init>(Lhi;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lhi$b;->b:Lhi;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhi$a;-><init>(Lhi;Lhi$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lhi;Lhi$1;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lhi$b;-><init>(Lhi;)V

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
    .line 142
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
