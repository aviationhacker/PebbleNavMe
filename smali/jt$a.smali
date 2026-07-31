.class final Ljt$a;
.super Lcom/google/common/collect/ImmutableSet$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet$a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljt;


# direct methods
.method private constructor <init>(Ljt;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Ljt$a;->a:Ljt;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljt;Ljt$1;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Ljt$a;-><init>(Ljt;)V

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Ljt$a;->a:Ljt;

    invoke-static {v0}, Ljt;->a(Ljt;)[Lcom/google/common/collect/Multisets$e;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$e;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iget-object v0, p0, Ljt$a;->a:Ljt;

    invoke-virtual {v0, p1}, Ljt;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Ljt$a;->a:Ljt;

    invoke-static {v0}, Ljt;->a(Ljt;)[Lcom/google/common/collect/Multisets$e;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
