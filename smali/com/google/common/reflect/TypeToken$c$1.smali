.class Lcom/google/common/reflect/TypeToken$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$c;->rawTypes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/reflect/TypeToken$c;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$c;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$c$1;->a:Lcom/google/common/reflect/TypeToken$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 740
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$c$1;->a(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
