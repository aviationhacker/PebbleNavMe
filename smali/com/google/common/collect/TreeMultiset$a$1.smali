.class final enum Lcom/google/common/collect/TreeMultiset$a$1;
.super Lcom/google/common/collect/TreeMultiset$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$a;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    return v0
.end method

.method b(Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 2
    .param p1    # Lcom/google/common/collect/TreeMultiset$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    goto :goto_0
.end method
