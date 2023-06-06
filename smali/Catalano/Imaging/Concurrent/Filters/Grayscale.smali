.class public LCatalano/Imaging/Concurrent/Filters/Grayscale;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/Grayscale$a;,
        LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
    }
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    .line 35
    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    .line 36
    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    .line 73
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    .line 80
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    .line 35
    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    .line 36
    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    .line 73
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 74
    iput-boolean v2, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    .line 89
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    .line 90
    iput-wide p3, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    .line 91
    iput-wide p5, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    .line 92
    iput-boolean v2, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    .line 93
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide v0, 0x3fcb333333333333L    # 0.2125

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    .line 35
    const-wide v0, 0x3fe6e48e8a71de6aL    # 0.7154

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    .line 36
    const-wide v0, 0x3fb27525460aa64cL    # 0.0721

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    .line 73
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    .line 100
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    .line 102
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    .line 185
    new-array v6, v5, [Ljava/lang/Thread;

    .line 186
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v5

    .line 187
    add-int/lit8 v7, v5, -0x1

    move v2, v1

    move v3, v1

    .line 190
    :goto_0
    if-ge v2, v5, :cond_1

    .line 191
    if-ne v2, v7, :cond_0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    .line 192
    :cond_0
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;

    new-instance v10, LCatalano/Imaging/Concurrent/Share;

    add-int v4, v3, v0

    invoke-direct {v10, p1, v3, v4}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v9, p0, v10}, LCatalano/Imaging/Concurrent/Filters/Grayscale$a;-><init>(LCatalano/Imaging/Concurrent/Filters/Grayscale;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v8, v6, v2

    .line 193
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 190
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 197
    :goto_1
    if-ge v0, v5, :cond_2

    .line 198
    :try_start_0
    aget-object v1, v6, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 204
    :cond_2
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/Grayscale;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->e:Z

    return v0
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    return-wide v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    return-wide v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/Grayscale;)D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    return-wide v0
.end method

.method static synthetic e(LCatalano/Imaging/Concurrent/Filters/Grayscale;)LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    return-object v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->indicateGrayscale(Z)V

    .line 173
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a(LCatalano/Imaging/FastBitmap;)V

    .line 179
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(Concurrent) Grayscale only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlueCoefficient()D
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    return-wide v0
.end method

.method public getGrayscaleMethod()LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    return-object v0
.end method

.method public getGreenCoefficient()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    return-wide v0
.end method

.method public getRedCoefficient()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    return-wide v0
.end method

.method public setBlueCoefficient(D)V
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->c:D

    .line 150
    return-void
.end method

.method public setGrayscaleMethod(LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->d:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 166
    return-void
.end method

.method public setGreenCoefficient(D)V
    .locals 1

    .prologue
    .line 133
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->b:D

    .line 134
    return-void
.end method

.method public setRedCoefficient(D)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, LCatalano/Imaging/Concurrent/Filters/Grayscale;->a:D

    .line 118
    return-void
.end method
