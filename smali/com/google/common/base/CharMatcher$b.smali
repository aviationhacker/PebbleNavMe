.class final Lcom/google/common/base/CharMatcher$b;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1027
    new-instance v0, Lcom/google/common/base/CharMatcher$b;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$b;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$b;->a:Lcom/google/common/base/CharMatcher$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1030
    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    .line 1031
    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1090
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1101
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1040
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1045
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1046
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1047
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1052
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1035
    const/4 v0, 0x1

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1057
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1063
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1117
    invoke-static {}, Lcom/google/common/base/CharMatcher$b;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 1111
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string v0, ""

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1074
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 1075
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([CC)V

    .line 1076
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1082
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1083
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string v0, ""

    return-object v0
.end method
