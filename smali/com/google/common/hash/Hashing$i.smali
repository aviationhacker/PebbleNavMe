.class Lcom/google/common/hash/Hashing$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;

.field static final b:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lle;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing$i;->a:Lcom/google/common/hash/HashFunction;

    .line 121
    invoke-static {}, Lcom/google/common/hash/Hashing;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->murmur3_32(I)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing$i;->b:Lcom/google/common/hash/HashFunction;

    return-void
.end method
