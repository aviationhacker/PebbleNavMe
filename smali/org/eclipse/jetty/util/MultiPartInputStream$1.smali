.class Lorg/eclipse/jetty/util/MultiPartInputStream$1;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/MultiPartInputStream;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->a:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 619
    if-ltz v0, :cond_2

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2

    .line 621
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 622
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 623
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 625
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end to quoted-printable byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    int-to-char v0, v0

    aput-char v0, v2, v3

    const/4 v0, 0x1

    int-to-char v1, v1

    aput-char v1, v2, v0

    .line 628
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    :cond_2
    return v0
.end method
