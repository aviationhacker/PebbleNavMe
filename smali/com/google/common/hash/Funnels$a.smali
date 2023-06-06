.class final enum Lcom/google/common/hash/Funnels$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Funnels$a;",
        ">;",
        "Lcom/google/common/hash/Funnel",
        "<[B>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$a;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/common/hash/Funnels$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/Funnels$a;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$a;

    sget-object v1, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/Funnels$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/Funnels$a;->b:[Lcom/google/common/hash/Funnels$a;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$a;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/common/hash/Funnels$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$a;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/common/hash/Funnels$a;->b:[Lcom/google/common/hash/Funnels$a;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$a;

    return-object v0
.end method


# virtual methods
.method public a([BLcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .prologue
    .line 49
    invoke-interface {p2, p1}, Lcom/google/common/hash/PrimitiveSink;->putBytes([B)Lcom/google/common/hash/PrimitiveSink;

    .line 50
    return-void
.end method

.method public synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$a;->a([BLcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "Funnels.byteArrayFunnel()"

    return-object v0
.end method
