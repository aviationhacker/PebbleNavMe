.class public abstract Lcom/google/common/reflect/Invokable;
.super Llo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/GenericDeclaration;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/Invokable$a;,
        Lcom/google/common/reflect/Invokable$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Llo;",
        "Ljava/lang/reflect/GenericDeclaration;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(TM;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Llo;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 64
    return-void
.end method

.method public static from(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;)",
            "Lcom/google/common/reflect/Invokable",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/common/reflect/Invokable$a;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/Invokable$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static from(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/Invokable",
            "<*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/reflect/Invokable$b;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/Invokable$b;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method abstract a()[Ljava/lang/reflect/Type;
.end method

.method abstract b()[Ljava/lang/reflect/Type;
.end method

.method abstract c()[[Ljava/lang/annotation/Annotation;
.end method

.method abstract d()Ljava/lang/reflect/Type;
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Llo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-super {p0}, Llo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getExceptionTypes()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->b()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 135
    invoke-static {v4}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->a()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->c()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 121
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 122
    new-instance v4, Lcom/google/common/reflect/Parameter;

    aget-object v5, v1, v0

    .line 123
    invoke-static {v5}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-direct {v4, p0, v0, v5, v6}, Lcom/google/common/reflect/Parameter;-><init>(Lcom/google/common/reflect/Invokable;ILcom/google/common/reflect/TypeToken;[Ljava/lang/annotation/Annotation;)V

    .line 122
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getReturnType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<+TR;>;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->d()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Llo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/Invokable;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract isOverridable()Z
.end method

.method public abstract isVarArgs()Z
.end method

.method public final returning(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/Invokable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Lcom/google/common/reflect/TypeToken",
            "<TR1;>;)",
            "Lcom/google/common/reflect/Invokable",
            "<TT;TR1;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getReturnType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeToken;->isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable;->getReturnType()Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invokable is known to return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-object p0
.end method

.method public final returning(Ljava/lang/Class;)Lcom/google/common/reflect/Invokable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R1:TR;>(",
            "Ljava/lang/Class",
            "<TR1;>;)",
            "Lcom/google/common/reflect/Invokable",
            "<TT;TR1;>;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/Invokable;->returning(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/Invokable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Llo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
