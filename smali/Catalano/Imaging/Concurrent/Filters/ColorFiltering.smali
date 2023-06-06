.class public LCatalano/Imaging/Concurrent/Filters/ColorFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;
    }
.end annotation


# instance fields
.field private a:LCatalano/Core/IntRange;

.field private b:LCatalano/Core/IntRange;

.field private c:LCatalano/Core/IntRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;LCatalano/Core/IntRange;LCatalano/Core/IntRange;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    .line 50
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    .line 51
    iput-object p3, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    .line 52
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->a:LCatalano/Core/IntRange;

    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 65
    new-array v4, v3, [Ljava/lang/Thread;

    .line 66
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 69
    :goto_0
    if-ge v1, v3, :cond_0

    .line 70
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering$a;-><init>(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 71
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 72
    add-int/2addr v2, v5

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 78
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 84
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->b:LCatalano/Core/IntRange;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/ColorFiltering;)LCatalano/Core/IntRange;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->c:LCatalano/Core/IntRange;

    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/ColorFiltering;->a(LCatalano/Imaging/FastBitmap;)V

    .line 60
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Color Filtering only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
