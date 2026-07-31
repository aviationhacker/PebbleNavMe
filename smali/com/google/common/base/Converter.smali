.class public abstract Lcom/google/common/base/Converter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Converter$c;,
        Lcom/google/common/base/Converter$b;,
        Lcom/google/common/base/Converter$a;,
        Lcom/google/common/base/Converter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TA;TB;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private transient b:Lcom/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter",
            "<TB;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/base/Converter;-><init>(Z)V

    .line 125
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean p1, p0, Lcom/google/common/base/Converter;->a:Z

    .line 132
    return-void
.end method

.method public static from(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Lcom/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TA;+TB;>;",
            "Lcom/google/common/base/Function",
            "<-TB;+TA;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/google/common/base/Converter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Converter$b;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Converter$1;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Converter",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 477
    sget-object v0, Lcom/google/common/base/Converter$c;->a:Lcom/google/common/base/Converter$c;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<TB;TC;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v1, Lcom/google/common/base/Converter$a;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Converter;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/Converter$a;-><init>(Lcom/google/common/base/Converter;Lcom/google/common/base/Converter;)V

    return-object v1
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->a:Z

    if-eqz v0, :cond_1

    .line 175
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final andThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<TB;TC;>;)",
            "Lcom/google/common/base/Converter",
            "<TA;TC;>;"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->a(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->a:Z

    if-eqz v0, :cond_1

    .line 185
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TA;>;)",
            "Ljava/lang/Iterable",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "fromIterable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/google/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$1;-><init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method public abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/common/base/Converter;->b:Lcom/google/common/base/Converter;

    .line 235
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/base/Converter$d;

    invoke-direct {v0, p0}, Lcom/google/common/base/Converter$d;-><init>(Lcom/google/common/base/Converter;)V

    iput-object v0, p0, Lcom/google/common/base/Converter;->b:Lcom/google/common/base/Converter;

    :cond_0
    return-object v0
.end method
