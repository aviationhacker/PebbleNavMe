.class final Lcom/google/common/base/CharMatcher$x;
.super Lcom/google/common/base/CharMatcher$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "x"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1124
    new-instance v0, Lcom/google/common/base/CharMatcher$x;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$x;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$x;->a:Lcom/google/common/base/CharMatcher$x;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1127
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$u;-><init>(Ljava/lang/String;)V

    .line 1128
    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 1209
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    return-object p0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1203
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1137
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const/4 v0, -0x1

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 1143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1144
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1145
    const/4 v0, -0x1

    return v0
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 1150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    const/4 v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 1132
    const/4 v0, 0x0

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1156
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

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 1161
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const/4 v0, 0x1

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1220
    invoke-static {}, Lcom/google/common/base/CharMatcher$x;->any()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1215
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
