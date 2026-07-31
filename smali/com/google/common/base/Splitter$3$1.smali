.class Lcom/google/common/base/Splitter$3$1;
.super Lcom/google/common/base/Splitter$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$3;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/regex/Matcher;

.field final synthetic b:Lcom/google/common/base/Splitter$3;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$3;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/util/regex/Matcher;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/common/base/Splitter$3$1;->b:Lcom/google/common/base/Splitter$3;

    iput-object p4, p0, Lcom/google/common/base/Splitter$3$1;->a:Ljava/util/regex/Matcher;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$a;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/common/base/Splitter$3$1;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method
