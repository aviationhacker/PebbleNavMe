.class Lcom/google/common/collect/LinkedListMultimap$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 150
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 151
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 152
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    .line 154
    return-void
.end method
