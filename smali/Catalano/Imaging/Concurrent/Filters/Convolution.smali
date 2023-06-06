.class public LCatalano/Imaging/Concurrent/Filters/Convolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Convolution$a;
    }
.end annotation


# instance fields
.field private a:[[I

.field private b:I

.field private c:Z

.field private d:LCatalano/Imaging/FastBitmap;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 84
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 91
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    .line 92
    return-void
.end method

.method public constructor <init>([[II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 110
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    .line 111
    iput p2, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->b:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 113
    return-void
.end method

.method public constructor <init>([[IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 122
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    .line 123
    iput p2, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->b:I

    .line 124
    iput-boolean p3, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 126
    return-void
.end method

.method public constructor <init>([[IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 38
    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 100
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    .line 101
    iput-boolean p2, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 102
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Convolution;[[I)I
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a([[I)I

    move-result v0

    return v0
.end method

.method private a([[I)I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 294
    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 138
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-direct {v0, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->d:LCatalano/Imaging/FastBitmap;

    .line 139
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 141
    new-array v6, v5, [Ljava/lang/Thread;

    .line 142
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int v7, v0, v5

    .line 143
    add-int/lit8 v8, v5, -0x1

    move v2, v1

    move v3, v1

    move v0, v1

    .line 147
    :goto_0
    if-ge v2, v5, :cond_1

    .line 148
    if-ne v2, v8, :cond_0

    const/4 v0, 0x1

    .line 149
    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, LCatalano/Imaging/Concurrent/Filters/Convolution$a;

    new-instance v11, LCatalano/Imaging/Concurrent/Share;

    add-int v4, v3, v7

    invoke-direct {v11, p1, v3, v4, v0}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;IIZ)V

    invoke-direct {v10, p0, v11}, LCatalano/Imaging/Concurrent/Filters/Convolution$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Convolution;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v9, v6, v2

    .line 150
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 147
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 155
    :goto_1
    if-ge v0, v5, :cond_2

    .line 156
    :try_start_0
    aget-object v1, v6, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 162
    :cond_2
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Convolution;)[[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    return-object v0
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/Convolution;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->d:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    return v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/Convolution;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    return v0
.end method

.method static synthetic e(LCatalano/Imaging/Concurrent/Filters/Convolution;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->b:I

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Convolution;->a(LCatalano/Imaging/FastBitmap;)V

    .line 131
    return-void
.end method

.method public getKernel()[[I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    return-object v0
.end method

.method public isReplicate()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    return v0
.end method

.method public setDivision(I)V
    .locals 1

    .prologue
    .line 61
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->b:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->c:Z

    .line 63
    return-void
.end method

.method public setKernel([[I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->a:[[I

    .line 54
    return-void
.end method

.method public setReplicate(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, LCatalano/Imaging/Concurrent/Filters/Convolution;->e:Z

    .line 79
    return-void
.end method
