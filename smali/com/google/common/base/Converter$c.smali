.class final Lcom/google/common/base/Converter$c;
.super Lcom/google/common/base/Converter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter",
        "<TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/base/Converter$c;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/google/common/base/Converter$c;

    invoke-direct {v0}, Lcom/google/common/base/Converter$c;-><init>()V

    sput-object v0, Lcom/google/common/base/Converter$c;->a:Lcom/google/common/base/Converter$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/google/common/base/Converter$c;->a:Lcom/google/common/base/Converter$c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/base/Converter$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 499
    return-object p0
.end method

.method a(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter",
            "<TT;TS;>;)",
            "Lcom/google/common/base/Converter",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 504
    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Converter;

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 494
    return-object p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 489
    return-object p1
.end method

.method public synthetic reverse()Lcom/google/common/base/Converter;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/base/Converter$c;->a()Lcom/google/common/base/Converter$c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    const-string v0, "Converter.identity()"

    return-object v0
.end method
