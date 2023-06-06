.class Landroid/support/v4/net/TrafficStatsCompat$a$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/support/v4/net/TrafficStatsCompat$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/net/TrafficStatsCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$a$1;->a:Landroid/support/v4/net/TrafficStatsCompat$a;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/net/TrafficStatsCompat$a$a;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/net/TrafficStatsCompat$a$a;-><init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/support/v4/net/TrafficStatsCompat$a$1;->a()Landroid/support/v4/net/TrafficStatsCompat$a$a;

    move-result-object v0

    return-object v0
.end method
