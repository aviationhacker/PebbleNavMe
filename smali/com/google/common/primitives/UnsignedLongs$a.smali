.class final enum Lcom/google/common/primitives/UnsignedLongs$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedLongs$a;",
        ">;",
        "Ljava/util/Comparator",
        "<[J>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/UnsignedLongs$a;

.field private static final synthetic b:[Lcom/google/common/primitives/UnsignedLongs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    new-instance v0, Lcom/google/common/primitives/UnsignedLongs$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedLongs$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$a;->a:Lcom/google/common/primitives/UnsignedLongs$a;

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/UnsignedLongs$a;

    sget-object v1, Lcom/google/common/primitives/UnsignedLongs$a;->a:Lcom/google/common/primitives/UnsignedLongs$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$a;->b:[Lcom/google/common/primitives/UnsignedLongs$a;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLongs$a;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/google/common/primitives/UnsignedLongs$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLongs$a;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedLongs$a;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$a;->b:[Lcom/google/common/primitives/UnsignedLongs$a;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedLongs$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedLongs$a;

    return-object v0
.end method


# virtual methods
.method public a([J[J)I
    .locals 6

    .prologue
    .line 171
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 172
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 174
    aget-wide v2, p1, v0

    aget-wide v0, p2, v0

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    .line 177
    :goto_1
    return v0

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 166
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedLongs$a;->a([J[J)I

    move-result v0

    return v0
.end method
