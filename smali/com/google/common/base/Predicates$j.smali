.class abstract enum Lcom/google/common/base/Predicates$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/Predicates$j;",
        ">;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/Predicates$j;

.field public static final enum b:Lcom/google/common/base/Predicates$j;

.field public static final enum c:Lcom/google/common/base/Predicates$j;

.field public static final enum d:Lcom/google/common/base/Predicates$j;

.field private static final synthetic e:[Lcom/google/common/base/Predicates$j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    new-instance v0, Lcom/google/common/base/Predicates$j$1;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Predicates$j$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$j;->a:Lcom/google/common/base/Predicates$j;

    .line 283
    new-instance v0, Lcom/google/common/base/Predicates$j$2;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1, v3}, Lcom/google/common/base/Predicates$j$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$j;->b:Lcom/google/common/base/Predicates$j;

    .line 295
    new-instance v0, Lcom/google/common/base/Predicates$j$3;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1, v4}, Lcom/google/common/base/Predicates$j$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$j;->c:Lcom/google/common/base/Predicates$j;

    .line 307
    new-instance v0, Lcom/google/common/base/Predicates$j$4;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, Lcom/google/common/base/Predicates$j$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Predicates$j;->d:Lcom/google/common/base/Predicates$j;

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/Predicates$j;

    sget-object v1, Lcom/google/common/base/Predicates$j;->a:Lcom/google/common/base/Predicates$j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/Predicates$j;->b:Lcom/google/common/base/Predicates$j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/base/Predicates$j;->c:Lcom/google/common/base/Predicates$j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/base/Predicates$j;->d:Lcom/google/common/base/Predicates$j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/base/Predicates$j;->e:[Lcom/google/common/base/Predicates$j;

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
    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/Predicates$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Predicates$j;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Predicates$j;
    .locals 1

    .prologue
    .line 269
    const-class v0, Lcom/google/common/base/Predicates$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicates$j;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Predicates$j;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/google/common/base/Predicates$j;->e:[Lcom/google/common/base/Predicates$j;

    invoke-virtual {v0}, [Lcom/google/common/base/Predicates$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Predicates$j;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/base/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 321
    return-object p0
.end method
