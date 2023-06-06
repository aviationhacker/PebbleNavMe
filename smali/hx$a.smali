.class final Lhx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljj$x",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lhx$a;->a:Ljava/lang/Throwable;

    .line 216
    return-void
.end method


# virtual methods
.method public a()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)Ljj$x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 231
    return-object p0
.end method

.method public a(Ljj$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lhx$a;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method
