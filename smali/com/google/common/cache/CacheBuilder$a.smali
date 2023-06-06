.class public final enum Lcom/google/common/cache/CacheBuilder$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/RemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/cache/CacheBuilder$a;",
        ">;",
        "Lcom/google/common/cache/RemovalListener",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/CacheBuilder$a;

.field private static final synthetic b:[Lcom/google/common/cache/CacheBuilder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    new-instance v0, Lcom/google/common/cache/CacheBuilder$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/CacheBuilder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/CacheBuilder$a;->a:Lcom/google/common/cache/CacheBuilder$a;

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/cache/CacheBuilder$a;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$a;->a:Lcom/google/common/cache/CacheBuilder$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/cache/CacheBuilder$a;->b:[Lcom/google/common/cache/CacheBuilder$a;

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
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilder$a;
    .locals 1

    .prologue
    .line 190
    const-class v0, Lcom/google/common/cache/CacheBuilder$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/CacheBuilder$a;

    return-object v0
.end method

.method public static values()[Lcom/google/common/cache/CacheBuilder$a;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/common/cache/CacheBuilder$a;->b:[Lcom/google/common/cache/CacheBuilder$a;

    invoke-virtual {v0}, [Lcom/google/common/cache/CacheBuilder$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/CacheBuilder$a;

    return-object v0
.end method


# virtual methods
.method public onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/RemovalNotification",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    return-void
.end method
