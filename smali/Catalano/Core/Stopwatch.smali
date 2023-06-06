.class public LCatalano/Core/Stopwatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public ElapsedMilliseconds()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, LCatalano/Core/Stopwatch;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public Reset()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCatalano/Core/Stopwatch;->b:Ljava/lang/Long;

    iput-object v0, p0, LCatalano/Core/Stopwatch;->a:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public Restart()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, LCatalano/Core/Stopwatch;->Reset()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCatalano/Core/Stopwatch;->a:Ljava/lang/Long;

    .line 67
    return-void
.end method

.method public Start()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCatalano/Core/Stopwatch;->a:Ljava/lang/Long;

    .line 43
    return-void
.end method

.method public Stop()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCatalano/Core/Stopwatch;->b:Ljava/lang/Long;

    .line 50
    iget-object v0, p0, LCatalano/Core/Stopwatch;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, LCatalano/Core/Stopwatch;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, LCatalano/Core/Stopwatch;->c:Ljava/lang/Long;

    .line 51
    invoke-virtual {p0}, LCatalano/Core/Stopwatch;->Reset()V

    .line 52
    return-void
.end method

.method public isRunning()Z
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, LCatalano/Core/Stopwatch;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
