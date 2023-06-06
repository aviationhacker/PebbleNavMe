.class Lcom/google/common/hash/Hashing$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/google/common/hash/Hashing$b;->b:Lcom/google/common/hash/Hashing$b;

    const-string v1, "Hashing.adler32()"

    .line 293
    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->a(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/Hashing$a;->a:Lcom/google/common/hash/HashFunction;

    .line 292
    return-void
.end method
