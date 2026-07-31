.class public LCatalano/Math/Matrix3x3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public V00:F

.field public V01:F

.field public V02:F

.field public V10:F

.field public V11:F

.field public V12:F

.field public V20:F

.field public V21:F

.field public V22:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    .line 87
    iput v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    .line 88
    iput v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    iput v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    .line 89
    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, LCatalano/Math/Matrix3x3;->V00:F

    .line 105
    iput p2, p0, LCatalano/Math/Matrix3x3;->V01:F

    .line 106
    iput p3, p0, LCatalano/Math/Matrix3x3;->V02:F

    .line 107
    iput p4, p0, LCatalano/Math/Matrix3x3;->V10:F

    .line 108
    iput p5, p0, LCatalano/Math/Matrix3x3;->V11:F

    .line 109
    iput p6, p0, LCatalano/Math/Matrix3x3;->V12:F

    .line 110
    iput p7, p0, LCatalano/Math/Matrix3x3;->V20:F

    .line 111
    iput p8, p0, LCatalano/Math/Matrix3x3;->V21:F

    .line 112
    iput p9, p0, LCatalano/Math/Matrix3x3;->V22:F

    .line 113
    return-void
.end method

.method public static Add(LCatalano/Math/Matrix3x3;LCatalano/Math/Matrix3x3;)LCatalano/Math/Matrix3x3;
    .locals 3

    .prologue
    .line 360
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 362
    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V00:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 363
    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V01:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 364
    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V02:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 366
    iget v1, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V10:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 367
    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V11:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 368
    iget v1, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V12:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 370
    iget v1, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V20:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 371
    iget v1, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V21:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 372
    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V22:F

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 374
    return-object v0
.end method

.method public static CreateDiagonal(LCatalano/Math/Vector3;)LCatalano/Math/Matrix3x3;
    .locals 2

    .prologue
    .line 292
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 294
    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 295
    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 296
    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 298
    return-object v0
.end method

.method public static CreateFromColumns(LCatalano/Math/Vector3;LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Matrix3x3;
    .locals 2

    .prologue
    .line 269
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 271
    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 272
    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 273
    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 275
    iget v1, p1, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 276
    iget v1, p1, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 277
    iget v1, p1, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 279
    iget v1, p2, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 280
    iget v1, p2, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 281
    iget v1, p2, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 283
    return-object v0
.end method

.method public static CreateFromRows(LCatalano/Math/Vector3;LCatalano/Math/Vector3;LCatalano/Math/Vector3;)LCatalano/Math/Matrix3x3;
    .locals 2

    .prologue
    .line 244
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 246
    iget v1, p0, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 247
    iget v1, p0, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 248
    iget v1, p0, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 250
    iget v1, p1, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 251
    iget v1, p1, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 252
    iget v1, p1, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 254
    iget v1, p2, LCatalano/Math/Vector3;->x:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 255
    iget v1, p2, LCatalano/Math/Vector3;->y:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 256
    iget v1, p2, LCatalano/Math/Vector3;->z:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 258
    return-object v0
.end method

.method public static CreateFromYawPitchRoll(FFF)LCatalano/Math/Matrix3x3;
    .locals 2

    .prologue
    .line 211
    invoke-static {p0}, LCatalano/Math/Matrix3x3;->CreateRotationY(F)LCatalano/Math/Matrix3x3;

    move-result-object v0

    invoke-static {p1}, LCatalano/Math/Matrix3x3;->CreateRotationX(F)LCatalano/Math/Matrix3x3;

    move-result-object v1

    invoke-static {v0, v1}, LCatalano/Math/Matrix3x3;->Multiply(LCatalano/Math/Matrix3x3;LCatalano/Math/Matrix3x3;)LCatalano/Math/Matrix3x3;

    move-result-object v0

    .line 212
    invoke-static {p2}, LCatalano/Math/Matrix3x3;->CreateRotationZ(F)LCatalano/Math/Matrix3x3;

    move-result-object v1

    invoke-virtual {v0, v1}, LCatalano/Math/Matrix3x3;->Multiply(LCatalano/Math/Matrix3x3;)V

    .line 214
    return-object v0
.end method

.method public static CreateRotationX(F)LCatalano/Math/Matrix3x3;
    .locals 4

    .prologue
    .line 165
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 167
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 168
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 170
    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 171
    neg-float v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 172
    iput v2, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 173
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 175
    return-object v0
.end method

.method public static CreateRotationY(F)LCatalano/Math/Matrix3x3;
    .locals 4

    .prologue
    .line 146
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 148
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 149
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 151
    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 152
    iput v2, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 153
    neg-float v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 154
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 156
    return-object v0
.end method

.method public static CreateRotationZ(F)LCatalano/Math/Matrix3x3;
    .locals 4

    .prologue
    .line 184
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 186
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 187
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 189
    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 190
    neg-float v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 191
    iput v2, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 192
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 194
    return-object v0
.end method

.method public static Identity()LCatalano/Math/Matrix3x3;
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 120
    new-instance v0, LCatalano/Math/Matrix3x3;

    move v3, v2

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v0 .. v9}, LCatalano/Math/Matrix3x3;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method public static Multiply(LCatalano/Math/Matrix3x3;LCatalano/Math/Matrix3x3;)LCatalano/Math/Matrix3x3;
    .locals 4

    .prologue
    .line 322
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 324
    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 325
    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 326
    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 328
    iget v1, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 329
    iget v1, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 330
    iget v1, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 332
    iget v1, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 333
    iget v1, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 334
    iget v1, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v3, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 336
    return-object v0
.end method

.method public static Subtract(LCatalano/Math/Matrix3x3;LCatalano/Math/Matrix3x3;)LCatalano/Math/Matrix3x3;
    .locals 3

    .prologue
    .line 398
    new-instance v0, LCatalano/Math/Matrix3x3;

    invoke-direct {v0}, LCatalano/Math/Matrix3x3;-><init>()V

    .line 400
    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V00:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V00:F

    .line 401
    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V01:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V01:F

    .line 402
    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V02:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V02:F

    .line 404
    iget v1, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V10:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V10:F

    .line 405
    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V11:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V11:F

    .line 406
    iget v1, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V12:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V12:F

    .line 408
    iget v1, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V20:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V20:F

    .line 409
    iget v1, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V21:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V21:F

    .line 410
    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V22:F

    sub-float/2addr v1, v2

    iput v1, v0, LCatalano/Math/Matrix3x3;->V22:F

    .line 412
    return-object v0
.end method


# virtual methods
.method public Add(LCatalano/Math/Matrix3x3;)V
    .locals 2

    .prologue
    .line 340
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V00:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    .line 341
    iget v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V01:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    .line 342
    iget v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V02:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    .line 344
    iget v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V10:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    .line 345
    iget v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V11:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    .line 346
    iget v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V12:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    .line 348
    iget v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V20:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    .line 349
    iget v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V21:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    .line 350
    iget v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V22:F

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    .line 351
    return-void
.end method

.method public Determinant()F
    .locals 3

    .prologue
    .line 128
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p0, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p0, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p0, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v1, v2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public ExtractYawPitchRoll()[F
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 230
    const/4 v1, 0x0

    iget v2, p0, LCatalano/Math/Matrix3x3;->V02:F

    float-to-double v2, v2

    iget v4, p0, LCatalano/Math/Matrix3x3;->V22:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 231
    const/4 v1, 0x1

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 232
    const/4 v1, 0x2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V10:F

    float-to-double v2, v2

    iget v4, p0, LCatalano/Math/Matrix3x3;->V11:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 233
    return-object v0
.end method

.method public Multiply(LCatalano/Math/Matrix3x3;)V
    .locals 3

    .prologue
    .line 302
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    .line 303
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    .line 304
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    .line 306
    iget v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    .line 307
    iget v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    .line 308
    iget v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    .line 310
    iget v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V00:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V10:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V20:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    .line 311
    iget v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V01:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V11:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    .line 312
    iget v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V02:F

    mul-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v2, p1, LCatalano/Math/Matrix3x3;->V22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    .line 313
    return-void
.end method

.method public Subtract(LCatalano/Math/Matrix3x3;)V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V00:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V00:F

    .line 379
    iget v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V01:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V01:F

    .line 380
    iget v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V02:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V02:F

    .line 382
    iget v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V10:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V10:F

    .line 383
    iget v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V11:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V11:F

    .line 384
    iget v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V12:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V12:F

    .line 386
    iget v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V20:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V20:F

    .line 387
    iget v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V21:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V21:F

    .line 388
    iget v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    iget v1, p1, LCatalano/Math/Matrix3x3;->V22:F

    sub-float/2addr v0, v1

    iput v0, p0, LCatalano/Math/Matrix3x3;->V22:F

    .line 389
    return-void
.end method

.method public toArray()[F
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, LCatalano/Math/Matrix3x3;->V00:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, LCatalano/Math/Matrix3x3;->V01:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, LCatalano/Math/Matrix3x3;->V02:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, LCatalano/Math/Matrix3x3;->V10:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, LCatalano/Math/Matrix3x3;->V11:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, LCatalano/Math/Matrix3x3;->V12:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, LCatalano/Math/Matrix3x3;->V20:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, LCatalano/Math/Matrix3x3;->V21:F

    aput v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, LCatalano/Math/Matrix3x3;->V22:F

    aput v2, v0, v1

    return-object v0
.end method
