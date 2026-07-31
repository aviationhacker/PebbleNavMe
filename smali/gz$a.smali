.class final Lgz$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lgy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgz$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lgz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lgz$a;->getAndIncrement()J

    .line 63
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lgz$a;->getAndAdd(J)J

    .line 68
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lgz$a;->get()J

    move-result-wide v0

    return-wide v0
.end method
