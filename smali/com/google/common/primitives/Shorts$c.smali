.class final Lcom/google/common/primitives/Shorts$c;
.super Lcom/google/common/base/Converter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/primitives/Shorts$c;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/google/common/primitives/Shorts$c;

    invoke-direct {v0}, Lcom/google/common/primitives/Shorts$c;-><init>()V

    sput-object v0, Lcom/google/common/primitives/Shorts$c;->a:Lcom/google/common/primitives/Shorts$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/google/common/primitives/Shorts$c;->a:Lcom/google/common/primitives/Shorts$c;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Short;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$c;->a(Ljava/lang/Short;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$c;->a(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const-string v0, "Shorts.stringConverter()"

    return-object v0
.end method
