.class Lhf$f;
.super Lhf$j;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.j;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhf;


# direct methods
.method constructor <init>(Lhf;Ljava/lang/Object;Ljava/util/List;Lhf$i;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lhf$i;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lhf",
            "<TK;TV;>.i;)V"
        }
    .end annotation

    .prologue
    .line 921
    iput-object p1, p0, Lhf$f;->a:Lhf;

    .line 922
    invoke-direct {p0, p1, p2, p3, p4}, Lhf$j;-><init>(Lhf;Ljava/lang/Object;Ljava/util/List;Lhf$i;)V

    .line 923
    return-void
.end method
