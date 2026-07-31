.class final Lcom/google/common/io/BaseEncoding$3;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->a(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)Ljava/io/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/Reader;

.field final synthetic b:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$3;->a:Ljava/io/Reader;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$3;->b:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 919
    return-void
.end method

.method public read()I
    .locals 3

    .prologue
    .line 906
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$3;->a:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 907
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$3;->b:Lcom/google/common/base/CharMatcher;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 1

    .prologue
    .line 913
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
