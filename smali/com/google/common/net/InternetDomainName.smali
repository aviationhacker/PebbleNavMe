.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/CharMatcher;

.field private static final b:Lcom/google/common/base/Splitter;

.field private static final c:Lcom/google/common/base/Joiner;

.field private static final g:Lcom/google/common/base/CharMatcher;

.field private static final h:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2e

    .line 79
    const-string v0, ".\u3002\uff0e\uff61"

    .line 80
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->a:Lcom/google/common/base/CharMatcher;

    .line 81
    invoke-static {v1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->b:Lcom/google/common/base/Splitter;

    .line 82
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->c:Lcom/google/common/base/Joiner;

    .line 241
    const-string v0, "-_"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->g:Lcom/google/common/base/CharMatcher;

    .line 243
    sget-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    sget-object v1, Lcom/google/common/net/InternetDomainName;->g:Lcom/google/common/base/CharMatcher;

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->h:Lcom/google/common/base/CharMatcher;

    .line 243
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget-object v0, Lcom/google/common/net/InternetDomainName;->a:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x2e

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xfd

    if-gt v1, v4, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Domain name too long: \'%s\':"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iput-object v0, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    .line 153
    sget-object v1, Lcom/google/common/net/InternetDomainName;->b:Lcom/google/common/base/Splitter;

    invoke-virtual {v1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    .line 154
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/16 v4, 0x7f

    if-gt v1, v4, :cond_2

    move v1, v2

    :goto_1
    const-string v4, "Domain has too many parts: \'%s\'"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/common/net/InternetDomainName;->a(Ljava/util/List;)Z

    move-result v1

    const-string v4, "Not a valid domain name: \'%s\'"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/google/common/net/InternetDomainName;->a()I

    move-result v0

    iput v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    .line 159
    return-void

    :cond_1
    move v1, v3

    .line 149
    goto :goto_0

    :cond_2
    move v1, v3

    .line 154
    goto :goto_1
.end method

.method private a()I
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    .line 170
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 171
    sget-object v2, Lcom/google/common/net/InternetDomainName;->c:Lcom/google/common/base/Joiner;

    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 173
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXACT:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    :cond_0
    :goto_1
    return v0

    .line 180
    :cond_1
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXCLUDED:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_2
    invoke-static {v2}, Lcom/google/common/net/InternetDomainName;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(I)Lcom/google/common/net/InternetDomainName;
    .locals 3

    .prologue
    .line 457
    sget-object v0, Lcom/google/common/net/InternetDomainName;->c:Lcom/google/common/base/Joiner;

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 510
    const-string v1, "\\."

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 511
    array-length v2, v1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->UNDER:Lcom/google/common/collect/ImmutableMap;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    sget-object v2, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v2, p0}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 275
    sget-object v3, Lcom/google/common/net/InternetDomainName;->h:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v3, v2}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    sget-object v2, Lcom/google/common/net/InternetDomainName;->g:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/common/net/InternetDomainName;->g:Lcom/google/common/base/CharMatcher;

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    if-eqz p1, :cond_2

    sget-object v2, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 227
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/net/InternetDomainName;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    return v0

    :cond_0
    move v3, v1

    .line 231
    :goto_1
    if-ge v3, v4, :cond_2

    .line 232
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-static {v0, v1}, Lcom/google/common/net/InternetDomainName;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 234
    goto :goto_0

    .line 231
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 238
    goto :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 2

    .prologue
    .line 213
    new-instance v1, Lcom/google/common/net/InternetDomainName;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/net/InternetDomainName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 498
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 5

    .prologue
    .line 471
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 531
    if-ne p1, p0, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    .line 535
    :cond_0
    instance-of v0, p1, Lcom/google/common/net/InternetDomainName;

    if-eqz v0, :cond_1

    .line 536
    check-cast p1, Lcom/google/common/net/InternetDomainName;

    .line 537
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPublicSuffix()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPublicSuffix()Z
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopPrivateDomain()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 395
    iget v1, p0, Lcom/google/common/net/InternetDomainName;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderPublicSuffix()Z
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parent()Lcom/google/common/net/InternetDomainName;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasParent()Z

    move-result v0

    const-string v1, "Domain \'%s\' has no parent"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0, v5}, Lcom/google/common/net/InternetDomainName;->a(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public parts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->e:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public publicSuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->a(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    return-object v0
.end method

.method public topPrivateDomain()Lcom/google/common/net/InternetDomainName;
    .locals 5

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopPrivateDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderPublicSuffix()Z

    move-result v0

    const-string v1, "Not under a public suffix: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/net/InternetDomainName;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->a(I)Lcom/google/common/net/InternetDomainName;

    move-result-object p0

    goto :goto_0
.end method
