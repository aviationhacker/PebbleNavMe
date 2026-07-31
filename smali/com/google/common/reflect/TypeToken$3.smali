.class Lcom/google/common/reflect/TypeToken$3;
.super Lcom/google/common/reflect/Invokable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$3;->b:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method a()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$3;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$a;->a()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->a(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method b()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$3;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$a;->b()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->a(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$3;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$a;->d()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

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
    .line 655
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$3;->b:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$3;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$3;->a()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
