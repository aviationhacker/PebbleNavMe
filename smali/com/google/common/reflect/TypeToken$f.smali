.class abstract enum Lcom/google/common/reflect/TypeToken$f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/reflect/TypeToken$f;",
        ">;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/common/reflect/TypeToken",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/TypeToken$f;

.field public static final enum b:Lcom/google/common/reflect/TypeToken$f;

.field private static final synthetic c:[Lcom/google/common/reflect/TypeToken$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 802
    new-instance v0, Lcom/google/common/reflect/TypeToken$f$1;

    const-string v1, "IGNORE_TYPE_VARIABLE_OR_WILDCARD"

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/TypeToken$f$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/TypeToken$f;->a:Lcom/google/common/reflect/TypeToken$f;

    .line 808
    new-instance v0, Lcom/google/common/reflect/TypeToken$f$2;

    const-string v1, "INTERFACE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/common/reflect/TypeToken$f$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/TypeToken$f;->b:Lcom/google/common/reflect/TypeToken$f;

    .line 800
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/reflect/TypeToken$f;

    sget-object v1, Lcom/google/common/reflect/TypeToken$f;->a:Lcom/google/common/reflect/TypeToken$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/TypeToken$f;->b:Lcom/google/common/reflect/TypeToken$f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/reflect/TypeToken$f;->c:[Lcom/google/common/reflect/TypeToken$f;

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
    .line 800
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/TypeToken$1;)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/TypeToken$f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/TypeToken$f;
    .locals 1

    .prologue
    .line 800
    const-class v0, Lcom/google/common/reflect/TypeToken$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/TypeToken$f;

    return-object v0
.end method

.method public static values()[Lcom/google/common/reflect/TypeToken$f;
    .locals 1

    .prologue
    .line 800
    sget-object v0, Lcom/google/common/reflect/TypeToken$f;->c:[Lcom/google/common/reflect/TypeToken$f;

    invoke-virtual {v0}, [Lcom/google/common/reflect/TypeToken$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/TypeToken$f;

    return-object v0
.end method
