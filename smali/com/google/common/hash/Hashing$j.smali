.class Lcom/google/common/hash/Hashing$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Llc;

    const-string v1, "SHA-1"

    const-string v2, "Hashing.sha1()"

    invoke-direct {v0, v1, v2}, Llc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/hash/Hashing$j;->a:Lcom/google/common/hash/HashFunction;

    return-void
.end method
