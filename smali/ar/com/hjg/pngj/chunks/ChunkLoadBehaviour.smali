.class public final enum Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_IF_SAFE:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_MOST_IMPORTANT:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field public static final enum LOAD_CHUNK_NEVER:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field private static final synthetic a:[Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    const-string v1, "LOAD_CHUNK_NEVER"

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_NEVER:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 16
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    const-string v1, "LOAD_CHUNK_IF_SAFE"

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_IF_SAFE:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 20
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    const-string v1, "LOAD_CHUNK_MOST_IMPORTANT"

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_MOST_IMPORTANT:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 26
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    const-string v1, "LOAD_CHUNK_ALWAYS"

    invoke-direct {v0, v1, v5}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_NEVER:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    aput-object v1, v0, v2

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_IF_SAFE:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    aput-object v1, v0, v3

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_MOST_IMPORTANT:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    aput-object v1, v0, v4

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    aput-object v1, v0, v5

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->a:[Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->a:[Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    return-object v0
.end method
