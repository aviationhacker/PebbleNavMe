.class final Ljx$b;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljx;


# direct methods
.method private constructor <init>(Ljx;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljx$b;->a:Ljx;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljx;Ljx$1;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljx$b;-><init>(Ljx;)V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Ljx$b;->a:Ljx;

    invoke-virtual {v0, p1}, Ljx;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljx$b;->a:Ljx;

    invoke-virtual {v0}, Ljx;->size()I

    move-result v0

    return v0
.end method
