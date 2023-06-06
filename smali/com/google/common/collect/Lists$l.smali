.class Lcom/google/common/collect/Lists$l;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;[TE;)V"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/google/common/collect/Lists$l;->a:Ljava/lang/Object;

    .line 371
    iput-object p2, p0, Lcom/google/common/collect/Lists$l;->b:Ljava/lang/Object;

    .line 372
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    .line 373
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$l;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->a:Ljava/lang/Object;

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->b:Ljava/lang/Object;

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/Lists$l;->c:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
