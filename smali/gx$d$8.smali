.class final enum Lgx$d$8;
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
    .line 538
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
    .line 548
    invoke-super {p0, p1, p2, p3}, Lgx$d;->a(Lgx$q;Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 549
    invoke-virtual {p0, p2, v0}, Lgx$d$8;->a(Lgx$p;Lgx$p;)V

    .line 550
    invoke-virtual {p0, p2, v0}, Lgx$d$8;->b(Lgx$p;Lgx$p;)V

    .line 551
    return-object v0
.end method

.method a(Lgx$q;Ljava/lang/Object;ILgx$p;)Lgx$p;
    .locals 2
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
    .line 542
    new-instance v0, Lgx$ac;

    iget-object v1, p1, Lgx$q;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lgx$ac;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILgx$p;)V

    return-object v0
.end method
