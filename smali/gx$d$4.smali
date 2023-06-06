.class final enum Lgx$d$4;
.super Lgx$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgx$d;-><init>(Ljava/lang/String;ILgx$1;)V

    return-void
.end method


# virtual methods
.method a(Lgx$q;Lgx$p;Lgx$p;)Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$q",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-super {p0, p1, p2, p3}, Lgx$d;->a(Lgx$q;Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 495
    invoke-virtual {p0, p2, v0}, Lgx$d$4;->a(Lgx$p;Lgx$p;)V

    .line 496
    invoke-virtual {p0, p2, v0}, Lgx$d$4;->b(Lgx$p;Lgx$p;)V

    .line 497
    return-object v0
.end method

.method a(Lgx$q;Ljava/lang/Object;ILgx$p;)Lgx$p;
    .locals 1
    .param p4    # Lgx$p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$q",
            "<TK;TV;>;TK;I",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lgx$u;

    invoke-direct {v0, p2, p3, p4}, Lgx$u;-><init>(Ljava/lang/Object;ILgx$p;)V

    return-object v0
.end method
