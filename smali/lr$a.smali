.class abstract enum Llr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Llr$a;

.field public static final enum b:Llr$a;

.field static final c:Llr$a;

.field private static final synthetic d:[Llr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Llr$a$1;

    const-string v1, "OWNED_BY_ENCLOSING_CLASS"

    invoke-direct {v0, v1, v2}, Llr$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr$a;->a:Llr$a;

    .line 120
    new-instance v0, Llr$a$2;

    const-string v1, "LOCAL_CLASS_HAS_NO_OWNER"

    invoke-direct {v0, v1, v3}, Llr$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr$a;->b:Llr$a;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Llr$a;

    sget-object v1, Llr$a;->a:Llr$a;

    aput-object v1, v0, v2

    sget-object v1, Llr$a;->b:Llr$a;

    aput-object v1, v0, v3

    sput-object v0, Llr$a;->d:[Llr$a;

    .line 134
    invoke-static {}, Llr$a;->a()Llr$a;

    move-result-object v0

    sput-object v0, Llr$a;->c:Llr$a;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILlr$1;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Llr$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()Llr$a;
    .locals 7

    .prologue
    .line 138
    new-instance v0, Llr$a$3;

    invoke-direct {v0}, Llr$a$3;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 141
    invoke-static {}, Llr$a;->values()[Llr$a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 142
    const-class v5, Llr$a$a;

    invoke-virtual {v4, v5}, Llr$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 143
    return-object v4

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Llr$a;
    .locals 1

    .prologue
    .line 111
    const-class v0, Llr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llr$a;

    return-object v0
.end method

.method public static values()[Llr$a;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Llr$a;->d:[Llr$a;

    invoke-virtual {v0}, [Llr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llr$a;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
