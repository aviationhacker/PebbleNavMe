.class final enum Lcom/google/common/reflect/TypeToken$f$1;
.super Lcom/google/common/reflect/TypeToken$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/TypeToken$f;-><init>(Ljava/lang/String;ILcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    .line 805
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 802
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$f$1;->a(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    return v0
.end method
