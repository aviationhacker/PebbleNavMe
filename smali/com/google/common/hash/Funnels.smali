.class public final Lcom/google/common/hash/Funnels;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Funnels$e;,
        Lcom/google/common/hash/Funnels$c;,
        Lcom/google/common/hash/Funnels$d;,
        Lcom/google/common/hash/Funnels$b;,
        Lcom/google/common/hash/Funnels$f;,
        Lcom/google/common/hash/Funnels$g;,
        Lcom/google/common/hash/Funnels$a;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/google/common/hash/Funnels$e;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$e;-><init>(Lcom/google/common/hash/PrimitiveSink;)V

    return-object v0
.end method

.method public static byteArrayFunnel()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/Funnels$a;

    return-object v0
.end method

.method public static integerFunnel()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/common/hash/Funnels$b;->a:Lcom/google/common/hash/Funnels$b;

    return-object v0
.end method

.method public static longFunnel()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Lcom/google/common/hash/Funnels$c;->a:Lcom/google/common/hash/Funnels$c;

    return-object v0
.end method

.method public static sequentialFunnel(Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel",
            "<TE;>;)",
            "Lcom/google/common/hash/Funnel",
            "<",
            "Ljava/lang/Iterable",
            "<+TE;>;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/common/hash/Funnels$d;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$d;-><init>(Lcom/google/common/hash/Funnel;)V

    return-object v0
.end method

.method public static stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/google/common/hash/Funnel",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/hash/Funnels$f;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Funnels$f;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static unencodedCharsFunnel()Lcom/google/common/hash/Funnel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/Funnel",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/hash/Funnels$g;->a:Lcom/google/common/hash/Funnels$g;

    return-object v0
.end method
