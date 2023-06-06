.class public final enum Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChunkReaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field public static final enum PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field public static final enum SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field private static final synthetic a:[Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    const-string v1, "BUFFER"

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 41
    new-instance v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    const-string v1, "PROCESS"

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 45
    new-instance v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    aput-object v1, v0, v2

    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    aput-object v1, v0, v3

    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    aput-object v1, v0, v4

    sput-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->a:[Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->a:[Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    return-object v0
.end method
