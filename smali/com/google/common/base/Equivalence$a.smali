.class final Lcom/google/common/base/Equivalence$a;
.super Lcom/google/common/base/Equivalence;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Equivalence",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/base/Equivalence$a;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/google/common/base/Equivalence$a;

    invoke-direct {v0}, Lcom/google/common/base/Equivalence$a;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalence$a;->a:Lcom/google/common/base/Equivalence$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/google/common/base/Equivalence$a;->a:Lcom/google/common/base/Equivalence$a;

    return-object v0
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
