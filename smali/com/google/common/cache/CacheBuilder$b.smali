.class public final enum Lcom/google/common/cache/CacheBuilder$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/Weigher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/cache/CacheBuilder$b;",
        ">;",
        "Lcom/google/common/cache/Weigher",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/CacheBuilder$b;

.field private static final synthetic b:[Lcom/google/common/cache/CacheBuilder$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/google/common/cache/CacheBuilder$b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CacheBuilder$b;->a:Lcom/google/common/cache/CacheBuilder$b;

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/cache/CacheBuilder$b;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$b;->a:Lcom/google/common/cache/CacheBuilder$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/cache/CacheBuilder$b;->b:[Lcom/google/common/cache/CacheBuilder$b;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder$b;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/google/common/cache/CacheBuilder$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CacheBuilder$b;

    return-object v0
.end method

.method public static values()[Lcom/google/common/cache/CacheBuilder$b;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/common/cache/CacheBuilder$b;->b:[Lcom/google/common/cache/CacheBuilder$b;

    invoke-virtual {v0}, [Lcom/google/common/cache/CacheBuilder$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/CacheBuilder$b;

    return-object v0
.end method


# virtual methods
.method public weigh(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method
