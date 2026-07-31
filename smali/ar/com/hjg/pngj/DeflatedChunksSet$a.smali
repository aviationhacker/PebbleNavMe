.class final enum Lar/com/hjg/pngj/DeflatedChunksSet$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/DeflatedChunksSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/DeflatedChunksSet$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

.field public static final enum b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

.field public static final enum c:Lar/com/hjg/pngj/DeflatedChunksSet$a;

.field public static final enum d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

.field private static final synthetic e:[Lar/com/hjg/pngj/DeflatedChunksSet$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    const-string v1, "WAITING_FOR_INPUT"

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/DeflatedChunksSet$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 50
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    const-string v1, "ROW_READY"

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/DeflatedChunksSet$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 52
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    const-string v1, "WORK_DONE"

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/DeflatedChunksSet$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->c:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 54
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v5}, Lar/com/hjg/pngj/DeflatedChunksSet$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    aput-object v1, v0, v2

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    aput-object v1, v0, v3

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->c:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    aput-object v1, v0, v4

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    aput-object v1, v0, v5

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->e:[Lar/com/hjg/pngj/DeflatedChunksSet$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet$a;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/DeflatedChunksSet$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->e:[Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/DeflatedChunksSet$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/DeflatedChunksSet$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->c:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
