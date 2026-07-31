.class public Lorg/eclipse/jetty/io/EofException;
.super Ljava/io/EOFException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/EofException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    :cond_0
    return-void
.end method
