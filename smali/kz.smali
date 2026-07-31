.class public abstract enum Lkz;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/BloomFilter$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkz;",
        ">;",
        "Lcom/google/common/hash/BloomFilter$b;"
    }
.end annotation


# static fields
.field public static final enum a:Lkz;

.field public static final enum b:Lkz;

.field private static final synthetic c:[Lkz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lkz$1;

    const-string v1, "MURMUR128_MITZ_32"

    invoke-direct {v0, v1, v2}, Lkz$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkz;->a:Lkz;

    .line 92
    new-instance v0, Lkz$2;

    const-string v1, "MURMUR128_MITZ_64"

    invoke-direct {v0, v1, v3}, Lkz$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkz;->b:Lkz;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lkz;

    sget-object v1, Lkz;->a:Lkz;

    aput-object v1, v0, v2

    sget-object v1, Lkz;->b:Lkz;

    aput-object v1, v0, v3

    sput-object v0, Lkz;->c:[Lkz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILkz$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lkz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkz;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lkz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkz;

    return-object v0
.end method

.method public static values()[Lkz;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lkz;->c:[Lkz;

    invoke-virtual {v0}, [Lkz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkz;

    return-object v0
.end method
