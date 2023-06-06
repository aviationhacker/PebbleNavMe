.class Landroid/support/v4/net/TrafficStatsCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/net/TrafficStatsCompat$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$a$1;

    invoke-direct {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$a$1;-><init>(Landroid/support/v4/net/TrafficStatsCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;->a:I

    .line 55
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public a(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;

    iget v0, v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;->a:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;

    iput p1, v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;->a:I

    .line 73
    return-void
.end method

.method public b(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
