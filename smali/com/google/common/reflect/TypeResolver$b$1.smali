.class Lcom/google/common/reflect/TypeResolver$b$1;
.super Lcom/google/common/reflect/TypeResolver$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver$b;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/TypeVariable;

.field final synthetic b:Lcom/google/common/reflect/TypeResolver$b;

.field final synthetic c:Lcom/google/common/reflect/TypeResolver$b;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeResolver$b;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$b$1;->c:Lcom/google/common/reflect/TypeResolver$b;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$b$1;->a:Ljava/lang/reflect/TypeVariable;

    iput-object p3, p0, Lcom/google/common/reflect/TypeResolver$b$1;->b:Lcom/google/common/reflect/TypeResolver$b;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver$b;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$b$1;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$b$1;->b:Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/reflect/TypeResolver$b;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method
