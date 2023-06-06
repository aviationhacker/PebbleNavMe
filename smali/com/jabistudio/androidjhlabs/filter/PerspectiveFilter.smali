.class public Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;
.super Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.source "SourceFile"


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private H:Z

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 41
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v3

    move v7, v1

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;-><init>(FFFFFFFF)V

    .line 42
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->H:Z

    .line 56
    invoke-virtual/range {p0 .. p8}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->unitSquareToQuad(FFFFFFFF)V

    .line 57
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 175
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->o:F

    .line 176
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->p:F

    .line 177
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->q:F

    .line 178
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->r:F

    .line 179
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->s:F

    .line 180
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->t:F

    .line 181
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->u:F

    .line 182
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->v:F

    .line 183
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->w:F

    .line 184
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->G:Z

    if-nez v0, :cond_0

    .line 187
    int-to-float v0, p2

    div-float v0, v3, v0

    .line 188
    int-to-float v1, p3

    div-float v1, v3, v1

    .line 190
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->o:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->o:F

    .line 191
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->r:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->r:F

    .line 192
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->u:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->u:F

    .line 193
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->p:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->p:F

    .line 194
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->s:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->s:F

    .line 195
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->v:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->v:F

    .line 198
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->H:Z

    return v0
.end method

.method public getOriginX()F
    .locals 4

    .prologue
    .line 241
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->a:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->a:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->e:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->g:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getOriginY()F
    .locals 4

    .prologue
    .line 249
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->b:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->b:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->d:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->f:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->h:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getPoint2D(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 230
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 231
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 233
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-virtual {p2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 234
    return-object p2
.end method

.method public quadToUnitSquare(FFFFFFFF)V
    .locals 11

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p8}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->unitSquareToQuad(FFFFFFFF)V

    .line 152
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 153
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 154
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 155
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 156
    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 157
    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 158
    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 159
    iget v7, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 160
    iget v8, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    iget v10, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 161
    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    .line 163
    mul-float/2addr v0, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    .line 164
    mul-float v0, v3, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    .line 165
    mul-float v0, v6, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    .line 166
    mul-float v0, v1, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    .line 167
    mul-float v0, v4, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    .line 168
    mul-float v0, v7, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    .line 169
    mul-float v0, v2, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    .line 170
    mul-float v0, v5, v8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    .line 172
    return-void
.end method

.method public setClip(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->H:Z

    .line 61
    return-void
.end method

.method public setCorners(FFFFFFFF)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual/range {p0 .. p8}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->unitSquareToQuad(FFFFFFFF)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->G:Z

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "Distort/Perspective..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 5

    .prologue
    .line 253
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->originalSpace:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->o:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->p:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->q:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->u:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->v:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->w:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    aput v1, p3, v0

    .line 254
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->originalSpace:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->r:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->s:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->t:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->u:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->v:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->w:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    aput v1, p3, v0

    .line 255
    return-void
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->G:Z

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->a:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->e:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 204
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->b:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->f:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 205
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->a:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->e:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 206
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->b:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->f:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->H:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 211
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 212
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v3, v5}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->getPoint2D(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 213
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v4, v5}, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->getPoint2D(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 214
    iget v1, v3, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 215
    iget v1, v3, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 216
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 217
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 218
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public unitSquareToQuad(FFFFFFFF)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->a:F

    .line 99
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->b:F

    .line 100
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->c:F

    .line 101
    iput p4, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->d:F

    .line 102
    iput p5, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->e:F

    .line 103
    iput p6, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->f:F

    .line 104
    iput p7, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->g:F

    .line 105
    iput p8, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->h:F

    .line 107
    sub-float v0, p3, p5

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->i:F

    .line 108
    sub-float v0, p4, p6

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->j:F

    .line 109
    sub-float v0, p7, p5

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->k:F

    .line 110
    sub-float v0, p8, p6

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->l:F

    .line 111
    sub-float v0, p1, p3

    add-float/2addr v0, p5

    sub-float/2addr v0, p7

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->m:F

    .line 112
    sub-float v0, p2, p4

    add-float/2addr v0, p6

    sub-float/2addr v0, p8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->n:F

    .line 114
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->n:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 115
    sub-float v0, p3, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    .line 116
    sub-float v0, p5, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    .line 117
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    .line 118
    sub-float v0, p4, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    .line 119
    sub-float v0, p6, p4

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    .line 120
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    .line 121
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    .line 132
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->F:F

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->G:Z

    .line 134
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->m:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->l:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->k:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->n:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->i:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->l:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->j:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->k:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    .line 124
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->i:F

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->n:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->j:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->m:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->i:F

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->l:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->j:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->k:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    .line 125
    sub-float v0, p3, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->x:F

    .line 126
    sub-float v0, p7, p1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->A:F

    .line 127
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->D:F

    .line 128
    sub-float v0, p4, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->z:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->y:F

    .line 129
    sub-float v0, p8, p2

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->C:F

    mul-float/2addr v1, p8

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->B:F

    .line 130
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/PerspectiveFilter;->E:F

    goto :goto_0
.end method
