.class public final Llf;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llf$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 53
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    new-array v4, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 53
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 55
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput p1, p0, Llf;->a:I

    .line 58
    iput p2, p0, Llf;->b:I

    .line 59
    iput-wide p3, p0, Llf;->c:J

    .line 60
    iput-wide p5, p0, Llf;->d:J

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 82
    instance-of v1, p1, Llf;

    if-eqz v1, :cond_0

    .line 83
    check-cast p1, Llf;

    .line 84
    iget v1, p0, Llf;->a:I

    iget v2, p1, Llf;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Llf;->b:I

    iget v2, p1, Llf;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Llf;->c:J

    iget-wide v4, p1, Llf;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Llf;->d:J

    iget-wide v4, p1, Llf;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Llf;->a:I

    xor-int/2addr v0, v1

    iget v1, p0, Llf;->b:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Llf;->c:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Llf;->d:J

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 8

    .prologue
    .line 70
    new-instance v1, Llf$a;

    iget v2, p0, Llf;->a:I

    iget v3, p0, Llf;->b:I

    iget-wide v4, p0, Llf;->c:J

    iget-wide v6, p0, Llf;->d:J

    invoke-direct/range {v1 .. v7}, Llf$a;-><init>(IIJJ)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    iget v0, p0, Llf;->a:I

    iget v1, p0, Llf;->b:I

    iget-wide v2, p0, Llf;->c:J

    iget-wide v4, p0, Llf;->d:J

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x51

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Hashing.sipHash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
