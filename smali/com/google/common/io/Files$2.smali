.class final Lcom/google/common/io/Files$2;
.super Lcom/google/common/collect/TreeTraverser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeTraverser",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 823
    if-eqz v0, :cond_0

    .line 824
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 828
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 817
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$2;->a(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    const-string v0, "Files.fileTreeTraverser()"

    return-object v0
.end method
