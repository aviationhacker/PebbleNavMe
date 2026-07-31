.class public LCatalano/Imaging/Corners/HarrisCornersDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Corners/ICornersDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

.field private b:F

.field private c:F

.field private d:I

.field private e:D

.field private f:[F

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 139
    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iget v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    iget v3, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    iget-wide v4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 140
    return-void
.end method

.method public constructor <init>(F)V
    .locals 8

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 147
    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iget v3, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    iget-wide v4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 148
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 8

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 156
    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iget-wide v4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 157
    return-void
.end method

.method public constructor <init>(FFD)V
    .locals 9

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 166
    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 167
    return-void
.end method

.method public constructor <init>(FFDI)V
    .locals 9

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 177
    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 178
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;)V
    .locals 8

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 215
    iget v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    iget v3, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    iget-wide v4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 216
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;F)V
    .locals 8

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 207
    iget v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    iget-wide v4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 208
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FD)V
    .locals 9

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 198
    iget v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    iget v6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 199
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FDI)V
    .locals 9

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 44
    const v0, 0x3d23d70a    # 0.04f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 45
    const v0, 0x469c4000    # 20000.0f

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 51
    const-wide v0, 0x3ff3333333333333L    # 1.2

    iput-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 53
    const/4 v0, 0x7

    iput v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 188
    iget v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    iget v7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V

    .line 189
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, LCatalano/Math/Functions/Gaussian;

    iget-wide v2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    invoke-direct {v0, v2, v3}, LCatalano/Math/Functions/Gaussian;-><init>(D)V

    iget v1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    invoke-virtual {v0, v1}, LCatalano/Math/Functions/Gaussian;->Kernel1D(I)[D

    move-result-object v0

    .line 231
    invoke-static {v0}, LCatalano/Core/ArraysUtil;->toFloat([D)[F

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->f:[F

    .line 232
    return-void
.end method

.method private a(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;FFDII)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 220
    iput p3, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 221
    iput p2, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 222
    iput p6, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 223
    iput-wide p4, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 224
    iput p7, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->g:I

    .line 226
    invoke-direct {p0}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a()V

    .line 227
    return-void
.end method

.method private a([[F[[F[F)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 346
    aget-object v0, p1, v1

    array-length v7, v0

    .line 347
    array-length v8, p1

    .line 348
    array-length v0, p3

    div-int/lit8 v5, v0, 0x2

    move v6, v1

    .line 350
    :goto_0
    if-ge v6, v8, :cond_2

    move v4, v5

    .line 351
    :goto_1
    sub-int v0, v7, v5

    if-ge v4, v0, :cond_1

    move v0, v1

    move v2, v3

    .line 353
    :goto_2
    array-length v9, p3

    if-ge v0, v9, :cond_0

    .line 354
    aget-object v9, p1, v6

    add-int v10, v4, v0

    sub-int/2addr v10, v5

    aget v9, v9, v10

    aget v10, p3, v0

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 356
    :cond_0
    aget-object v0, p2, v6

    aput v2, v0, v4

    .line 351
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 350
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v1

    .line 361
    :goto_3
    if-ge v6, v7, :cond_5

    move v4, v5

    .line 363
    :goto_4
    sub-int v0, v8, v5

    if-ge v4, v0, :cond_4

    move v0, v1

    move v2, v3

    .line 366
    :goto_5
    array-length v9, p3

    if-ge v0, v9, :cond_3

    .line 367
    add-int v9, v4, v0

    sub-int/2addr v9, v5

    aget-object v9, p2, v9

    aget v9, v9, v6

    aget v10, p3, v0

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 370
    :cond_3
    aget-object v0, p1, v4

    aput v2, v0, v6

    .line 363
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 361
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 373
    :cond_5
    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 250
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 253
    filled-new-array {v10, v9}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 254
    filled-new-array {v10, v9}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 255
    filled-new-array {v10, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 257
    const/4 v5, 0x1

    move v6, v5

    :goto_1
    add-int/lit8 v5, v10, -0x1

    if-ge v6, v5, :cond_2

    .line 258
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v7, v9, -0x1

    if-ge v5, v7, :cond_1

    .line 259
    add-int/lit8 v7, v6, -0x1

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 260
    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 261
    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    .line 262
    add-int/lit8 v12, v6, -0x1

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    .line 263
    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v13}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    .line 264
    add-int/lit8 v14, v6, 0x1

    add-int/lit8 v15, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v14

    .line 265
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    .line 266
    add-int/lit8 v16, v6, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v16

    .line 268
    add-int/2addr v8, v7

    add-int/2addr v8, v11

    add-int/2addr v13, v12

    add-int/2addr v13, v14

    sub-int/2addr v8, v13

    int-to-float v8, v8

    const v13, 0x3e2aaaab

    mul-float/2addr v8, v13

    .line 269
    add-int v13, v14, v15

    add-int/2addr v11, v13

    add-int v12, v12, v16

    add-int/2addr v7, v12

    sub-int v7, v11, v7

    int-to-float v7, v7

    const v11, 0x3e2aaaab

    mul-float/2addr v7, v11

    .line 271
    aget-object v11, v2, v6

    mul-float v12, v8, v8

    aput v12, v11, v5

    .line 272
    aget-object v11, v3, v6

    mul-float v12, v7, v7

    aput v12, v11, v5

    .line 273
    aget-object v11, v4, v6

    mul-float/2addr v7, v8

    aput v7, v11, v5

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 245
    :cond_0
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 246
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 257
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_1

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    const-wide/16 v12, 0x0

    cmpl-double v5, v6, v12

    if-lez v5, :cond_3

    .line 280
    filled-new-array {v10, v9}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 283
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->f:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a([[F[[F[F)V

    .line 284
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->f:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a([[F[[F[F)V

    .line 285
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->f:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, LCatalano/Imaging/Corners/HarrisCornersDetector;->a([[F[[F[F)V

    .line 289
    :cond_3
    filled-new-array {v10, v9}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 292
    const/4 v6, 0x0

    move v8, v6

    :goto_3
    if-ge v8, v10, :cond_7

    .line 293
    const/4 v6, 0x0

    move v7, v6

    :goto_4
    if-ge v7, v9, :cond_6

    .line 294
    aget-object v6, v2, v8

    aget v6, v6, v7

    .line 295
    aget-object v11, v3, v8

    aget v11, v11, v7

    .line 296
    aget-object v12, v4, v8

    aget v12, v12, v7

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    sget-object v14, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    if-ne v13, v14, :cond_5

    .line 298
    mul-float v13, v6, v11

    mul-float/2addr v12, v12

    sub-float v12, v13, v12

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    add-float v14, v6, v11

    add-float/2addr v6, v11

    mul-float/2addr v6, v14

    mul-float/2addr v6, v13

    sub-float v6, v12, v6

    .line 304
    :goto_5
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    cmpl-float v11, v6, v11

    if-lez v11, :cond_4

    .line 305
    aget-object v11, v5, v8

    aput v6, v11, v7

    .line 293
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_4

    .line 301
    :cond_5
    mul-float v13, v6, v11

    mul-float/2addr v12, v12

    sub-float v12, v13, v12

    add-float/2addr v6, v11

    const/high16 v11, 0x34000000

    add-float/2addr v6, v11

    div-float v6, v12, v6

    goto :goto_5

    .line 292
    :cond_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_3

    .line 311
    :cond_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 313
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    sub-int/2addr v10, v3

    move v7, v2

    :goto_6
    if-ge v7, v10, :cond_c

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    sub-int v11, v9, v3

    move v6, v2

    :goto_7
    if-ge v6, v11, :cond_b

    .line 315
    aget-object v2, v5, v7

    aget v3, v2, v6

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    neg-int v2, v2

    move v4, v2

    :goto_8
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    if-gt v4, v2, :cond_9

    .line 321
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    neg-int v2, v2

    :goto_9
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    if-gt v2, v12, :cond_d

    .line 322
    add-int v12, v7, v4

    aget-object v12, v5, v12

    add-int v13, v6, v2

    aget v12, v12, v13

    cmpl-float v12, v12, v3

    if-lez v12, :cond_8

    .line 323
    const/4 v2, 0x0

    .line 318
    :goto_a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_8

    .line 321
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 330
    :cond_9
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_a

    .line 331
    new-instance v2, LCatalano/Core/IntPoint;

    invoke-direct {v2, v7, v6}, LCatalano/Core/IntPoint;-><init>(II)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_7

    .line 313
    :cond_b
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    .line 336
    :cond_c
    return-object v8

    :cond_d
    move v2, v3

    goto :goto_a
.end method

.method public bridge synthetic ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, LCatalano/Imaging/Corners/HarrisCornersDetector;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getK()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    return v0
.end method

.method public getMeasure()LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    return-object v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    return-wide v0
.end method

.method public getSuppression()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    return v0
.end method

.method public setK(F)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->b:F

    .line 101
    return-void
.end method

.method public setMeasure(LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->a:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    .line 69
    return-void
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 132
    iput-wide p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->e:D

    .line 133
    return-void
.end method

.method public setSuppression(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->d:I

    .line 85
    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, LCatalano/Imaging/Corners/HarrisCornersDetector;->c:F

    .line 117
    return-void
.end method
