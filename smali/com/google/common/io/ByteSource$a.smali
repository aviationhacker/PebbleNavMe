.class final Lcom/google/common/io/ByteSource$a;
.super Lcom/google/common/io/CharSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/io/ByteSource;

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method private constructor <init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/common/io/ByteSource$a;->a:Lcom/google/common/io/ByteSource;

    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    .line 443
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/common/io/ByteSource$a;->b:Ljava/nio/charset/Charset;

    .line 444
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSource$1;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ByteSource$a;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$a;->a:Lcom/google/common/io/ByteSource;

    invoke-virtual {v1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/ByteSource$a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/common/io/ByteSource$a;->a:Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSource$a;->b:Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".asCharSource("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
