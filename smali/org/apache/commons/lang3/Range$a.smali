.class final enum Lorg/apache/commons/lang3/Range$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/Range$a;",
        ">;",
        "Ljava/util/Comparator;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/apache/commons/lang3/Range$a;

.field private static final synthetic b:[Lorg/apache/commons/lang3/Range$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    new-instance v0, Lorg/apache/commons/lang3/Range$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/Range$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/Range$a;->a:Lorg/apache/commons/lang3/Range$a;

    .line 459
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/lang3/Range$a;

    sget-object v1, Lorg/apache/commons/lang3/Range$a;->a:Lorg/apache/commons/lang3/Range$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/Range$a;->b:[Lorg/apache/commons/lang3/Range$a;

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
    .line 459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/Range$a;
    .locals 1

    .prologue
    .line 459
    const-class v0, Lorg/apache/commons/lang3/Range$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/Range$a;

    return-object v0
.end method

.method public static final values()[Lorg/apache/commons/lang3/Range$a;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lorg/apache/commons/lang3/Range$a;->b:[Lorg/apache/commons/lang3/Range$a;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/Range$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/Range$a;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 469
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
