.class final Lcom/google/common/io/ByteSource$d;
.super Lcom/google/common/io/ByteSource$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final d:Lcom/google/common/io/ByteSource$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lcom/google/common/io/ByteSource$d;

    invoke-direct {v0}, Lcom/google/common/io/ByteSource$d;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteSource$d;->d:Lcom/google/common/io/ByteSource$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$b;-><init>([B)V

    .line 624
    return-void
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1

    .prologue
    .line 628
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/common/io/ByteSource$d;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 639
    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
