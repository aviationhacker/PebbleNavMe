.class final Llr$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Llr$c;->d:Llr$c;

    invoke-virtual {v0, p1}, Llr$c;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Llr$b;->a:Ljava/lang/reflect/Type;

    .line 238
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 253
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 254
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 256
    invoke-virtual {p0}, Llr$b;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Llr$b;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Llr$b;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Llr$b;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llr;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
