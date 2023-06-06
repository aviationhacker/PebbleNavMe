.class Lcom/google/common/reflect/TypeToken$5;
.super Llq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet$Builder;

.field final synthetic b:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$Builder;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$5;->b:Lcom/google/common/reflect/TypeToken;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$5;->a:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p0}, Llq;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$5;->a:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 1004
    return-void
.end method

.method a(Ljava/lang/reflect/GenericArrayType;)V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$5;->a:Lcom/google/common/collect/ImmutableSet$Builder;

    .line 1007
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 1006
    invoke-static {v1}, Llr;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 1008
    return-void
.end method

.method a(Ljava/lang/reflect/ParameterizedType;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$5;->a:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 1001
    return-void
.end method

.method a(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 994
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken$5;->a([Ljava/lang/reflect/Type;)V

    .line 995
    return-void
.end method

.method a(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    .prologue
    .line 997
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken$5;->a([Ljava/lang/reflect/Type;)V

    .line 998
    return-void
.end method
