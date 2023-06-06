.class Lcom/google/common/collect/Interners$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj",
            "<TE;",
            "Lcom/google/common/collect/Interners$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Equivalence;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->b()Ljj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Ljj;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/common/collect/Interners$b;-><init>()V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Ljj;

    invoke-virtual {v0, p1}, Ljj;->c(Ljava/lang/Object;)Ljj$l;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 90
    :goto_0
    return-object p1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Interners$b;->a:Ljj;

    sget-object v1, Lcom/google/common/collect/Interners$b$a;->a:Lcom/google/common/collect/Interners$b$a;

    invoke-virtual {v0, p1, v1}, Ljj;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$b$a;

    .line 89
    if-nez v0, :cond_0

    goto :goto_0
.end method
