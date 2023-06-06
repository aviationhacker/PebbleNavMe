.class final Lcom/google/common/net/MediaType$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/MediaType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 665
    iput-object p1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    .line 666
    return-void
.end method


# virtual methods
.method a()C
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 699
    iget-object v0, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method a(C)C
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 692
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->a()C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 693
    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 694
    return p1

    .line 692
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 670
    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 671
    invoke-virtual {p1}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    iput v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 672
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/net/MediaType$a;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 676
    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 677
    invoke-virtual {p0, p1}, Lcom/google/common/net/MediaType$a;->a(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v1

    .line 678
    iget v2, p0, Lcom/google/common/net/MediaType$a;->b:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 679
    return-object v1

    .line 678
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/MediaType$a;->b:I

    iget-object v1, p0, Lcom/google/common/net/MediaType$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/google/common/base/CharMatcher;)C
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/google/common/net/MediaType$a;->a()C

    move-result v0

    .line 685
    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 686
    iget v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/net/MediaType$a;->b:I

    .line 687
    return v0
.end method
