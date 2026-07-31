.class final enum Lcom/google/common/primitives/Ints$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Ints$c;",
        ">;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/Ints$c;

.field private static final synthetic b:[Lcom/google/common/primitives/Ints$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 451
    new-instance v0, Lcom/google/common/primitives/Ints$c;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Ints$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Ints$c;->a:Lcom/google/common/primitives/Ints$c;

    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Ints$c;

    sget-object v1, Lcom/google/common/primitives/Ints$c;->a:Lcom/google/common/primitives/Ints$c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Ints$c;->b:[Lcom/google/common/primitives/Ints$c;

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
    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Ints$c;
    .locals 1

    .prologue
    .line 450
    const-class v0, Lcom/google/common/primitives/Ints$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Ints$c;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Ints$c;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/google/common/primitives/Ints$c;->b:[Lcom/google/common/primitives/Ints$c;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Ints$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Ints$c;

    return-object v0
.end method


# virtual methods
.method public a([I[I)I
    .locals 4

    .prologue
    .line 455
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 456
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 457
    aget v0, p1, v1

    aget v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    .line 458
    if-eqz v0, :cond_0

    .line 462
    :goto_1
    return v0

    .line 456
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 462
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 450
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Ints$c;->a([I[I)I

    move-result v0

    return v0
.end method
