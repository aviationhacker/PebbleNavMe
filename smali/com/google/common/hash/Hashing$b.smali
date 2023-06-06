.class abstract enum Lcom/google/common/hash/Hashing$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Hashing$b;",
        ">;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/zip/Checksum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Hashing$b;

.field public static final enum b:Lcom/google/common/hash/Hashing$b;

.field private static final synthetic d:[Lcom/google/common/hash/Hashing$b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-instance v0, Lcom/google/common/hash/Hashing$b$1;

    const-string v1, "CRC_32"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/common/hash/Hashing$b$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/common/hash/Hashing$b;->a:Lcom/google/common/hash/Hashing$b;

    .line 307
    new-instance v0, Lcom/google/common/hash/Hashing$b$2;

    const-string v1, "ADLER_32"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/common/hash/Hashing$b$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/common/hash/Hashing$b;->b:Lcom/google/common/hash/Hashing$b;

    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/hash/Hashing$b;

    sget-object v1, Lcom/google/common/hash/Hashing$b;->a:Lcom/google/common/hash/Hashing$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/Hashing$b;->b:Lcom/google/common/hash/Hashing$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/hash/Hashing$b;->d:[Lcom/google/common/hash/Hashing$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 317
    iput p3, p0, Lcom/google/common/hash/Hashing$b;->c:I

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/google/common/hash/Hashing$1;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/hash/Hashing$b;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/hash/Hashing$b;)I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/google/common/hash/Hashing$b;->c:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Hashing$b;
    .locals 1

    .prologue
    .line 300
    const-class v0, Lcom/google/common/hash/Hashing$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Hashing$b;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Hashing$b;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/common/hash/Hashing$b;->d:[Lcom/google/common/hash/Hashing$b;

    invoke-virtual {v0}, [Lcom/google/common/hash/Hashing$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Hashing$b;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/util/zip/Checksum;
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$b;->a()Ljava/util/zip/Checksum;

    move-result-object v0

    return-object v0
.end method
