.class public final enum Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/chunks/PngChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChunkOrderingConstraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field public static final enum AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field public static final enum BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field public static final enum BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field public static final enum NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field public static final enum NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

.field private static final synthetic a:[Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 54
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "BEFORE_PLTE_AND_IDAT"

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 58
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "AFTER_PLTE_BEFORE_IDAT"

    invoke-direct {v0, v1, v5}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 62
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED"

    invoke-direct {v0, v1, v6}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 66
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "BEFORE_IDAT"

    invoke-direct {v0, v1, v7}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 70
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    const-string v1, "NA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    sget-object v1, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v1, v0, v3

    sget-object v1, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v1, v0, v4

    sget-object v1, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v1, v0, v5

    sget-object v1, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v1, v0, v6

    sget-object v1, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    aput-object v2, v0, v1

    sput-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->a:[Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->a:[Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method


# virtual methods
.method public isOk(IZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    sget-object v2, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    sget-object v2, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v2, :cond_2

    .line 91
    if-lt p1, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    sget-object v2, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v2, :cond_3

    .line 93
    if-lt p1, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 94
    :cond_3
    sget-object v2, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v2, :cond_6

    .line 95
    if-eqz p2, :cond_4

    if-lt p1, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    if-ge p1, v3, :cond_5

    if-gt p1, v4, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public mustGoAfterPLTE()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mustGoBeforeIDAT()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-eq p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mustGoBeforePLTE()Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
