.class final enum Llr$c$2;
.super Llr$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llr$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llr$c;-><init>(Ljava/lang/String;ILlr$1;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 550
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 551
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Llr;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llr$b;

    invoke-direct {v0, p1}, Llr$b;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 557
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method
