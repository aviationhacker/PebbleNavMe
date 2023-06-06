.class final enum Lcom/google/common/collect/MultimapBuilder$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/MultimapBuilder$e;",
        ">;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/MultimapBuilder$e;

.field private static final synthetic b:[Lcom/google/common/collect/MultimapBuilder$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MultimapBuilder$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MultimapBuilder$e;->a:Lcom/google/common/collect/MultimapBuilder$e;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/MultimapBuilder$e;

    sget-object v1, Lcom/google/common/collect/MultimapBuilder$e;->a:Lcom/google/common/collect/MultimapBuilder$e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/MultimapBuilder$e;->b:[Lcom/google/common/collect/MultimapBuilder$e;

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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/google/common/collect/MultimapBuilder$e;->a:Lcom/google/common/collect/MultimapBuilder$e;

    .line 214
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/google/common/collect/MultimapBuilder$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MultimapBuilder$e;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MultimapBuilder$e;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/google/common/collect/MultimapBuilder$e;->b:[Lcom/google/common/collect/MultimapBuilder$e;

    invoke-virtual {v0}, [Lcom/google/common/collect/MultimapBuilder$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MultimapBuilder$e;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
