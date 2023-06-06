.class Lcom/google/common/reflect/TypeToken$e$a;
.super Lcom/google/common/reflect/TypeToken$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/TypeToken$e",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/reflect/TypeToken$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/TypeToken$e",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken$e",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$e;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    .line 1252
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$e$a;->c:Lcom/google/common/reflect/TypeToken$e;

    .line 1253
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e$a;->c:Lcom/google/common/reflect/TypeToken$e;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$e;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable",
            "<+TK;>;"
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e$a;->c:Lcom/google/common/reflect/TypeToken$e;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$e;->c(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$e$a;->c:Lcom/google/common/reflect/TypeToken$e;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
