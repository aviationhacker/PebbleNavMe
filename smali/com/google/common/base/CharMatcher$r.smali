.class final Lcom/google/common/base/CharMatcher$r;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1405
    new-instance v0, Lcom/google/common/base/CharMatcher$r;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$r;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$r;->a:Lcom/google/common/base/CharMatcher$r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1403
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1409
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    const-string v0, "CharMatcher.javaLetterOrDigit()"

    return-object v0
.end method
