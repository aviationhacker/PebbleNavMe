.class Lcom/google/common/hash/Hashing$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;

.field static final b:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lld;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lld;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Hashing$h;->a:Lcom/google/common/hash/HashFunction;

    .line 152
    invoke-static {}, Lcom/google/common/hash/Hashing;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing$h;->b:Lcom/google/common/hash/HashFunction;

    return-void
.end method
