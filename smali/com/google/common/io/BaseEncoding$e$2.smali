.class Lcom/google/common/io/BaseEncoding$e$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$e;->decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field final e:Lcom/google/common/base/CharMatcher;

.field final synthetic f:Ljava/io/Reader;

.field final synthetic g:Lcom/google/common/io/BaseEncoding$e;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$e;Ljava/io/Reader;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 679
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$e$2;->f:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 680
    iput v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    .line 681
    iput v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    .line 682
    iput v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    .line 683
    iput-boolean v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->d:Z

    .line 684
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$e;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->e:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->f:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 723
    return-void
.end method

.method public read()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 689
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->f:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 690
    if-ne v1, v0, :cond_1

    .line 691
    iget-boolean v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->d:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding$a;->b(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 692
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid input length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    .line 697
    int-to-char v1, v1

    .line 698
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->e:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v2, v1}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 699
    iget-boolean v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->d:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    add-int/lit8 v2, v2, -0x1

    .line 700
    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding$a;->b(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 701
    :cond_2
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Padding cannot start at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_3
    iput-boolean v4, p0, Lcom/google/common/io/BaseEncoding$e$2;->d:Z

    goto :goto_0

    .line 704
    :cond_4
    iget-boolean v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->d:Z

    if-eqz v2, :cond_5

    .line 705
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected padding character but found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_5
    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iget-object v3, v3, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v3, v3, Lcom/google/common/io/BaseEncoding$a;->b:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    .line 709
    iget v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iget-object v3, v3, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {v3, v1}, Lcom/google/common/io/BaseEncoding$a;->b(C)I

    move-result v1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    .line 710
    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$e$2;->g:Lcom/google/common/io/BaseEncoding$e;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$e;->b:Lcom/google/common/io/BaseEncoding$a;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$a;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    .line 712
    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 713
    iget v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    .line 714
    iget v0, p0, Lcom/google/common/io/BaseEncoding$e$2;->a:I

    iget v1, p0, Lcom/google/common/io/BaseEncoding$e$2;->b:I

    shr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    :cond_6
    return v0
.end method
