.class final Llr$2;
.super Llq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llr;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Llr$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Llq;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Llr$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method a(Ljava/lang/reflect/GenericArrayType;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Llr$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method a(Ljava/lang/reflect/TypeVariable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Llr$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Llr;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method a(Ljava/lang/reflect/WildcardType;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Llr$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Llr;->a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 198
    return-void
.end method
