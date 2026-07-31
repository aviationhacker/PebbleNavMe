.class public final enum Lar/com/hjg/pngj/FilterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_NONE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUB:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_UP:Lar/com/hjg/pngj/FilterType;

.field public static final enum FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lar/com/hjg/pngj/FilterType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lar/com/hjg/pngj/FilterType;


# instance fields
.field public final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 14
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_NONE"

    invoke-direct {v1, v2, v0, v0}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    .line 18
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_SUB"

    invoke-direct {v1, v2, v5, v5}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    .line 22
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_UP"

    invoke-direct {v1, v2, v6, v6}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    .line 26
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_AVERAGE"

    invoke-direct {v1, v2, v7, v7}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    .line 30
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_PAETH"

    invoke-direct {v1, v2, v8, v8}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    .line 34
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_DEFAULT"

    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    .line 38
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_AGGRESSIVE"

    const/4 v3, 0x6

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 42
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_VERYAGGRESSIVE"

    const/4 v3, 0x7

    const/4 v4, -0x4

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    .line 46
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_ADAPTIVE_FULL"

    const/16 v3, 0x8

    const/4 v4, -0x4

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    .line 50
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_ADAPTIVE_MEDIUM"

    const/16 v3, 0x9

    const/4 v4, -0x3

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    .line 54
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_ADAPTIVE_FAST"

    const/16 v3, 0xa

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    .line 58
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_SUPER_ADAPTIVE"

    const/16 v3, 0xb

    const/16 v4, -0xa

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    .line 62
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_PRESERVE"

    const/16 v3, 0xc

    const/16 v4, -0x28

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    .line 66
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_CYCLIC"

    const/16 v3, 0xd

    const/16 v4, -0x32

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    .line 70
    new-instance v1, Lar/com/hjg/pngj/FilterType;

    const-string v2, "FILTER_UNKNOWN"

    const/16 v3, 0xe

    const/16 v4, -0x64

    invoke-direct {v1, v2, v3, v4}, Lar/com/hjg/pngj/FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    .line 10
    const/16 v1, 0xf

    new-array v1, v1, [Lar/com/hjg/pngj/FilterType;

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v1, v0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v1, v5

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v1, v6

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v1, v7

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_AGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_VERYAGGRESSIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    aput-object v3, v1, v2

    sput-object v1, Lar/com/hjg/pngj/FilterType;->b:[Lar/com/hjg/pngj/FilterType;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lar/com/hjg/pngj/FilterType;->a:Ljava/util/HashMap;

    .line 82
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->values()[Lar/com/hjg/pngj/FilterType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    sget-object v4, Lar/com/hjg/pngj/FilterType;->a:Ljava/util/HashMap;

    iget v5, v3, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lar/com/hjg/pngj/FilterType;->val:I

    .line 76
    return-void
.end method

.method public static getAllStandard()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardExceptNone()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAllStandardNoneLast()[Lar/com/hjg/pngj/FilterType;
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Lar/com/hjg/pngj/FilterType;

    const/4 v1, 0x0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getByVal(I)Lar/com/hjg/pngj/FilterType;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lar/com/hjg/pngj/FilterType;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public static isAdaptive(Lar/com/hjg/pngj/FilterType;)Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    const/4 v1, -0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    const/4 v1, -0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidStandard(I)Z
    .locals 1

    .prologue
    .line 93
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidStandard(Lar/com/hjg/pngj/FilterType;)Z
    .locals 1

    .prologue
    .line 97
    if-eqz p0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/FilterType;->val:I

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lar/com/hjg/pngj/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lar/com/hjg/pngj/FilterType;->b:[Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method
