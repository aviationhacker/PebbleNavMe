.class Lcom/google/common/reflect/TypeToken$2;
.super Lcom/google/common/reflect/Invokable$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/Invokable$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/Invokable$b;-><init>(Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method a()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$b;->a()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->a(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method b()[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$b;->b()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeToken;->a(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$b;->d()Ljava/lang/reflect/Type;

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
    .line 628
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$2;->getOwnerType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Lcom/google/common/reflect/Invokable$b;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
