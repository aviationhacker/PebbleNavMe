.class public abstract enum Lcom/google/common/collect/MapMaker$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/MapMaker$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/MapMaker$d;

.field public static final enum b:Lcom/google/common/collect/MapMaker$d;

.field public static final enum c:Lcom/google/common/collect/MapMaker$d;

.field public static final enum d:Lcom/google/common/collect/MapMaker$d;

.field public static final enum e:Lcom/google/common/collect/MapMaker$d;

.field private static final synthetic f:[Lcom/google/common/collect/MapMaker$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    new-instance v0, Lcom/google/common/collect/MapMaker$d$1;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMaker$d$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;

    .line 710
    new-instance v0, Lcom/google/common/collect/MapMaker$d$2;

    const-string v1, "REPLACED"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMaker$d$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    .line 721
    new-instance v0, Lcom/google/common/collect/MapMaker$d$3;

    const-string v1, "COLLECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMaker$d$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    .line 732
    new-instance v0, Lcom/google/common/collect/MapMaker$d$4;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/MapMaker$d$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->d:Lcom/google/common/collect/MapMaker$d;

    .line 743
    new-instance v0, Lcom/google/common/collect/MapMaker$d$5;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v6}, Lcom/google/common/collect/MapMaker$d$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->e:Lcom/google/common/collect/MapMaker$d;

    .line 692
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$d;

    sget-object v1, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/MapMaker$d;->d:Lcom/google/common/collect/MapMaker$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/collect/MapMaker$d;->e:Lcom/google/common/collect/MapMaker$d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/common/collect/MapMaker$d;->f:[Lcom/google/common/collect/MapMaker$d;

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
    .line 692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$d;
    .locals 1

    .prologue
    .line 692
    const-class v0, Lcom/google/common/collect/MapMaker$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$d;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$d;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->f:[Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$d;

    return-object v0
.end method
