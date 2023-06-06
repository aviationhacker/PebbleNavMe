.class final enum Lcom/google/common/primitives/Shorts$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Shorts$a;",
        ">;",
        "Ljava/util/Comparator",
        "<[S>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/Shorts$a;

.field private static final synthetic b:[Lcom/google/common/primitives/Shorts$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    new-instance v0, Lcom/google/common/primitives/Shorts$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Shorts$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Shorts$a;->a:Lcom/google/common/primitives/Shorts$a;

    .line 449
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Shorts$a;

    sget-object v1, Lcom/google/common/primitives/Shorts$a;->a:Lcom/google/common/primitives/Shorts$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Shorts$a;->b:[Lcom/google/common/primitives/Shorts$a;

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
    .line 449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Shorts$a;
    .locals 1

    .prologue
    .line 449
    const-class v0, Lcom/google/common/primitives/Shorts$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Shorts$a;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Shorts$a;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/google/common/primitives/Shorts$a;->b:[Lcom/google/common/primitives/Shorts$a;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Shorts$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Shorts$a;

    return-object v0
.end method


# virtual methods
.method public a([S[S)I
    .locals 4

    .prologue
    .line 454
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 455
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 456
    aget-short v0, p1, v1

    aget-short v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/Shorts;->compare(SS)I

    move-result v0

    .line 457
    if-eqz v0, :cond_0

    .line 461
    :goto_1
    return v0

    .line 455
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 449
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$a;->a([S[S)I

    move-result v0

    return v0
.end method
