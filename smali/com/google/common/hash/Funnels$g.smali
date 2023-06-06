.class final enum Lcom/google/common/hash/Funnels$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/Funnels$g;",
        ">;",
        "Lcom/google/common/hash/Funnel",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$g;

.field private static final synthetic b:[Lcom/google/common/hash/Funnels$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/google/common/hash/Funnels$g;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/Funnels$g;->a:Lcom/google/common/hash/Funnels$g;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/hash/Funnels$g;

    sget-object v1, Lcom/google/common/hash/Funnels$g;->a:Lcom/google/common/hash/Funnels$g;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/hash/Funnels$g;->b:[Lcom/google/common/hash/Funnels$g;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$g;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/google/common/hash/Funnels$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnels$g;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$g;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/common/hash/Funnels$g;->b:[Lcom/google/common/hash/Funnels$g;

    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/Funnels$g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .prologue
    .line 73
    invoke-interface {p2, p1}, Lcom/google/common/hash/PrimitiveSink;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;

    .line 74
    return-void
.end method

.method public synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$g;->a(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "Funnels.unencodedCharsFunnel()"

    return-object v0
.end method
