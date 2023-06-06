.class Lcom/google/common/reflect/Invokable$a;
.super Lcom/google/common/reflect/Invokable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/Invokable",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/google/common/reflect/Invokable;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 236
    iput-object p1, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    .line 237
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 311
    iget-object v2, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 317
    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 328
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method a()[Ljava/lang/reflect/Type;
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 261
    array-length v1, v0

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/reflect/Invokable$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 263
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 264
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$a;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 269
    :cond_0
    return-object v0
.end method

.method b()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final c()[[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$a;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 252
    array-length v2, v1

    if-lez v2, :cond_0

    .line 253
    invoke-static {v0, v1}, Llr;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$a;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 292
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/reflect/TypeVariable;

    .line 294
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v2
.end method

.method public final isOverridable()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public final isVarArgs()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$a;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    return v0
.end method
