.class final Lcom/google/common/io/CharStreams$a;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/common/io/CharStreams$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/common/io/CharStreams$a;

    invoke-direct {v0}, Lcom/google/common/io/CharStreams$a;-><init>()V

    sput-object v0, Lcom/google/common/io/CharStreams$a;->a:Lcom/google/common/io/CharStreams$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/io/CharStreams$a;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/common/io/CharStreams$a;->a:Lcom/google/common/io/CharStreams$a;

    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 224
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 212
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 218
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 219
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$a;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$a;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/CharStreams$a;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "CharStreams.nullWriter()"

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 207
    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 208
    return-void
.end method

.method public write([C)V
    .locals 0

    .prologue
    .line 192
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public write([CII)V
    .locals 2

    .prologue
    .line 197
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 198
    return-void
.end method
