.class final Lcom/google/common/io/BaseEncoding$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Appendable;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/Appendable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 928
    iput p1, p0, Lcom/google/common/io/BaseEncoding$4;->b:I

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$4;->c:Ljava/lang/Appendable;

    iput-object p3, p0, Lcom/google/common/io/BaseEncoding$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->b:I

    iput v0, p0, Lcom/google/common/io/BaseEncoding$4;->a:I

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 2

    .prologue
    .line 933
    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->a:I

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$4;->c:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$4;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 935
    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->b:I

    iput v0, p0, Lcom/google/common/io/BaseEncoding$4;->a:I

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$4;->c:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 938
    iget v0, p0, Lcom/google/common/io/BaseEncoding$4;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$4;->a:I

    .line 939
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 949
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 944
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
