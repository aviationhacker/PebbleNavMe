.class Lorg/eclipse/jetty/util/MultiPartInputStream$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/MultiPartInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/util/ReadLineInputStream;

.field b:Ljava/lang/String;

.field c:[B

.field d:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 817
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->a:Lorg/eclipse/jetty/util/ReadLineInputStream;

    .line 818
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->d:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 829
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->a:Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 831
    const/4 v0, -0x1

    .line 848
    :goto_0
    return v0

    .line 832
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    .line 845
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->d:I

    .line 848
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    iget v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->d:I

    aget-byte v0, v0, v1

    goto :goto_0

    .line 834
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 835
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    goto :goto_1

    .line 838
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 839
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 840
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 841
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 842
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$a;->c:[B

    goto :goto_1
.end method
