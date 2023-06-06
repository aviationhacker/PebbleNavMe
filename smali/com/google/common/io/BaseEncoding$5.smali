.class final Lcom/google/common/io/BaseEncoding$5;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->a(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Appendable;

.field final synthetic b:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$5;->a:Ljava/lang/Appendable;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$5;->b:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$5;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 978
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$5;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 973
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$5;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 963
    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 967
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
