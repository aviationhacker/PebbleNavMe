.class public LCatalano/Imaging/Concurrent/Filters/Invert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Invert$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 47
    new-array v4, v3, [Ljava/lang/Thread;

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 51
    :goto_0
    if-ge v1, v3, :cond_0

    .line 52
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/Invert$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/Invert$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Invert;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 53
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 54
    add-int/2addr v2, v5

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 60
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Invert;->a(LCatalano/Imaging/FastBitmap;)V

    .line 42
    return-void
.end method
