.class abstract Lcom/google/common/base/Splitter$a;
.super Lgr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Ljava/lang/CharSequence;

.field final d:Lcom/google/common/base/CharMatcher;

.field final e:Z

.field f:I

.field g:I


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 568
    invoke-direct {p0}, Lgr;-><init>()V

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$a;->f:I

    .line 569
    invoke-static {p1}, Lcom/google/common/base/Splitter;->a(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$a;->d:Lcom/google/common/base/CharMatcher;

    .line 570
    invoke-static {p1}, Lcom/google/common/base/Splitter;->b(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$a;->e:Z

    .line 571
    invoke-static {p1}, Lcom/google/common/base/Splitter;->c(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$a;->g:I

    .line 572
    iput-object p2, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    .line 573
    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)I
.end method

.method protected c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 583
    iget v0, p0, Lcom/google/common/base/Splitter$a;->f:I

    .line 584
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$a;->f:I

    if-eq v1, v5, :cond_6

    .line 588
    iget v1, p0, Lcom/google/common/base/Splitter$a;->f:I

    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$a;->a(I)I

    move-result v1

    .line 589
    if-ne v1, v5, :cond_1

    .line 590
    iget-object v1, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 591
    iput v5, p0, Lcom/google/common/base/Splitter$a;->f:I

    .line 596
    :goto_1
    iget v2, p0, Lcom/google/common/base/Splitter$a;->f:I

    if-ne v2, v0, :cond_8

    .line 604
    iget v1, p0, Lcom/google/common/base/Splitter$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/base/Splitter$a;->f:I

    .line 605
    iget v1, p0, Lcom/google/common/base/Splitter$a;->f:I

    iget-object v2, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 606
    iput v5, p0, Lcom/google/common/base/Splitter$a;->f:I

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$a;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/common/base/Splitter$a;->f:I

    goto :goto_1

    .line 611
    :goto_2
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lcom/google/common/base/Splitter$a;->d:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 612
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 614
    :goto_3
    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/base/Splitter$a;->d:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_3

    .line 618
    :cond_2
    iget-boolean v1, p0, Lcom/google/common/base/Splitter$a;->e:Z

    if-eqz v1, :cond_3

    if-ne v2, v0, :cond_3

    .line 620
    iget v0, p0, Lcom/google/common/base/Splitter$a;->f:I

    goto :goto_0

    .line 624
    :cond_3
    iget v1, p0, Lcom/google/common/base/Splitter$a;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 628
    iget-object v0, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 629
    iput v5, p0, Lcom/google/common/base/Splitter$a;->f:I

    .line 631
    :goto_4
    if-le v0, v2, :cond_5

    iget-object v1, p0, Lcom/google/common/base/Splitter$a;->d:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 632
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 635
    :cond_4
    iget v1, p0, Lcom/google/common/base/Splitter$a;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/base/Splitter$a;->g:I

    .line 638
    :cond_5
    iget-object v1, p0, Lcom/google/common/base/Splitter$a;->c:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_2
.end method
