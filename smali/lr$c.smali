.class public abstract enum Llr$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llr$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Llr$c;

.field public static final enum b:Llr$c;

.field public static final enum c:Llr$c;

.field static final d:Llr$c;

.field private static final synthetic e:[Llr$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    new-instance v0, Llr$c$1;

    const-string v1, "JAVA6"

    invoke-direct {v0, v1, v2}, Llr$c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr$c;->a:Llr$c;

    .line 548
    new-instance v0, Llr$c$2;

    const-string v1, "JAVA7"

    invoke-direct {v0, v1, v3}, Llr$c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr$c;->b:Llr$c;

    .line 560
    new-instance v0, Llr$c$3;

    const-string v1, "JAVA8"

    invoke-direct {v0, v1, v4}, Llr$c$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr$c;->c:Llr$c;

    .line 531
    const/4 v0, 0x3

    new-array v0, v0, [Llr$c;

    sget-object v1, Llr$c;->a:Llr$c;

    aput-object v1, v0, v2

    sget-object v1, Llr$c;->b:Llr$c;

    aput-object v1, v0, v3

    sget-object v1, Llr$c;->c:Llr$c;

    aput-object v1, v0, v4

    sput-object v0, Llr$c;->e:[Llr$c;

    .line 584
    const-class v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Llr$c;->c:Llr$c;

    sput-object v0, Llr$c;->d:Llr$c;

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Llr$c$4;

    invoke-direct {v0}, Llr$c$4;-><init>()V

    invoke-virtual {v0}, Llr$c$4;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 587
    sget-object v0, Llr$c;->b:Llr$c;

    sput-object v0, Llr$c;->d:Llr$c;

    goto :goto_0

    .line 589
    :cond_1
    sget-object v0, Llr$c;->a:Llr$c;

    sput-object v0, Llr$c;->d:Llr$c;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 531
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILlr$1;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1, p2}, Llr$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llr$c;
    .locals 1

    .prologue
    .line 531
    const-class v0, Llr$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llr$c;

    return-object v0
.end method

.method public static values()[Llr$c;
    .locals 1

    .prologue
    .line 531
    sget-object v0, Llr$c;->e:[Llr$c;

    invoke-virtual {v0}, [Llr$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llr$c;

    return-object v0
.end method


# virtual methods
.method final a([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 601
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 602
    invoke-virtual {p0, v3}, Llr$c;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method abstract b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method c(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    invoke-static {p1}, Llr;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
