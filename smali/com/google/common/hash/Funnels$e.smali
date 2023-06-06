.class Lcom/google/common/hash/Funnels$e;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/google/common/hash/PrimitiveSink;


# direct methods
.method constructor <init>(Lcom/google/common/hash/PrimitiveSink;)V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 246
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/PrimitiveSink;

    iput-object v0, p0, Lcom/google/common/hash/Funnels$e;->a:Lcom/google/common/hash/PrimitiveSink;

    .line 247
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/common/hash/Funnels$e;->a:Lcom/google/common/hash/PrimitiveSink;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Funnels.asOutputStream("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/common/hash/Funnels$e;->a:Lcom/google/common/hash/PrimitiveSink;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/hash/PrimitiveSink;->putByte(B)Lcom/google/common/hash/PrimitiveSink;

    .line 252
    return-void
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/common/hash/Funnels$e;->a:Lcom/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1}, Lcom/google/common/hash/PrimitiveSink;->putBytes([B)Lcom/google/common/hash/PrimitiveSink;

    .line 257
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/common/hash/Funnels$e;->a:Lcom/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/PrimitiveSink;->putBytes([BII)Lcom/google/common/hash/PrimitiveSink;

    .line 262
    return-void
.end method
