.class public LCatalano/Imaging/Filters/Artistic/Blend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

.field private b:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    .line 189
    iput-object p2, p0, LCatalano/Imaging/Filters/Artistic/Blend;->a:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 190
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/16 v5, 0x80

    const/4 v0, 0x0

    const/16 v6, 0xff

    .line 195
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 197
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 199
    sget-object v1, LCatalano/Imaging/Filters/Artistic/Blend$1;->a:[I

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->a:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    invoke-virtual {v3}, LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 675
    :cond_0
    return-void

    .line 201
    :goto_0
    :pswitch_0
    if-ge v0, v2, :cond_0

    .line 202
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 203
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 205
    :cond_1
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-le v1, v3, :cond_2

    .line 206
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 208
    :cond_2
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-le v1, v3, :cond_3

    .line 209
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 201
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :goto_1
    :pswitch_1
    if-ge v0, v2, :cond_0

    .line 215
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 216
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 218
    :cond_4
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 219
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 221
    :cond_5
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 222
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 214
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :goto_2
    :pswitch_2
    if-ge v0, v2, :cond_0

    .line 228
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 229
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    .line 230
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    .line 231
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    :goto_3
    :pswitch_3
    if-ge v0, v2, :cond_0

    .line 236
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 237
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 238
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 239
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 243
    :goto_4
    :pswitch_4
    if-ge v0, v2, :cond_0

    .line 244
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 245
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 246
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 247
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_5
    move v1, v0

    .line 251
    :goto_5
    if-ge v1, v2, :cond_0

    .line 252
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 253
    if-ge v3, v6, :cond_7

    .line 254
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 260
    :goto_6
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 261
    if-ge v3, v6, :cond_8

    .line 262
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 268
    :goto_7
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 269
    if-ge v3, v6, :cond_9

    .line 270
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 251
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 257
    :cond_7
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_6

    .line 265
    :cond_8
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_7

    .line 273
    :cond_9
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_8

    .line 278
    :goto_9
    :pswitch_6
    if-ge v0, v2, :cond_0

    .line 279
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 280
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 281
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 282
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 286
    :goto_a
    :pswitch_7
    if-ge v0, v2, :cond_0

    .line 287
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 288
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 289
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    .line 290
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 294
    :goto_b
    :pswitch_8
    if-ge v0, v2, :cond_0

    .line 295
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    rsub-int v1, v1, 0xff

    .line 296
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    mul-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    rsub-int v3, v3, 0xff

    .line 297
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    rsub-int v5, v5, 0xff

    mul-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    rsub-int v4, v4, 0xff

    .line 298
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 302
    :goto_c
    :pswitch_9
    if-ge v0, v2, :cond_0

    .line 303
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    sub-int/2addr v1, v3

    .line 304
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    sub-int/2addr v3, v4

    .line 305
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    .line 306
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 310
    :goto_d
    :pswitch_a
    if-ge v0, v2, :cond_0

    .line 312
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    if-ge v1, v5, :cond_a

    .line 313
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 314
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 315
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 323
    :goto_e
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    if-ge v1, v5, :cond_b

    .line 324
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 325
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 326
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 334
    :goto_f
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    if-ge v1, v5, :cond_c

    .line 335
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 336
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 337
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 310
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 318
    :cond_a
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 319
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 320
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_e

    .line 329
    :cond_b
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 330
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 331
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_f

    .line 340
    :cond_c
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 341
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 342
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_10

    .line 347
    :goto_11
    :pswitch_b
    if-ge v0, v2, :cond_0

    .line 349
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    if-ge v1, v5, :cond_d

    .line 350
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 351
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 352
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 360
    :goto_12
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    if-ge v1, v5, :cond_e

    .line 361
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 362
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 363
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 371
    :goto_13
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    if-ge v1, v5, :cond_f

    .line 372
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    .line 373
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 374
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 347
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 355
    :cond_d
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 356
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 357
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_12

    .line 366
    :cond_e
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 367
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 368
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_13

    .line 377
    :cond_f
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 378
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 379
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_14

    .line 384
    :goto_15
    :pswitch_c
    if-ge v0, v2, :cond_0

    .line 386
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    if-ge v1, v5, :cond_10

    .line 387
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 388
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 395
    :goto_16
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    if-ge v1, v5, :cond_11

    .line 396
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 397
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 404
    :goto_17
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    if-ge v1, v5, :cond_12

    .line 405
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 406
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 384
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 391
    :cond_10
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    sub-float v1, v4, v1

    .line 392
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_16

    .line 400
    :cond_11
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    sub-float v1, v4, v1

    .line 401
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_17

    .line 409
    :cond_12
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x40

    rsub-int v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    sub-float v1, v4, v1

    .line 410
    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_18

    .line 415
    :goto_19
    :pswitch_d
    if-ge v0, v2, :cond_0

    .line 416
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    if-ne v1, v6, :cond_13

    .line 417
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 424
    :goto_1a
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    if-ne v1, v6, :cond_14

    .line 425
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 432
    :goto_1b
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    if-ne v1, v6, :cond_15

    .line 433
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 415
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 420
    :cond_13
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 421
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_1a

    .line 428
    :cond_14
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 429
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_1b

    .line 436
    :cond_15
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 437
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_1c

    :pswitch_e
    move v1, v0

    .line 442
    :goto_1d
    if-ge v1, v2, :cond_0

    .line 443
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-nez v3, :cond_16

    .line 444
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 451
    :goto_1e
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-nez v3, :cond_17

    .line 452
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 459
    :goto_1f
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-nez v3, :cond_18

    .line 460
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 442
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 447
    :cond_16
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    div-int/2addr v3, v4

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 448
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_1e

    .line 455
    :cond_17
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    div-int/2addr v3, v4

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 456
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_1f

    .line 463
    :cond_18
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    div-int/2addr v3, v4

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 464
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_20

    :pswitch_f
    move v1, v0

    .line 469
    :goto_21
    if-ge v1, v2, :cond_0

    .line 472
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-ge v3, v5, :cond_1a

    .line 473
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 474
    if-ge v3, v6, :cond_19

    .line 475
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 486
    :goto_22
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-ge v3, v5, :cond_1c

    .line 487
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 488
    if-ge v3, v6, :cond_1b

    .line 489
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 500
    :goto_23
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-ge v3, v5, :cond_1e

    .line 501
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 502
    if-ge v3, v6, :cond_1d

    .line 503
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 469
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 478
    :cond_19
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_22

    .line 482
    :cond_1a
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x80

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 483
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_22

    .line 492
    :cond_1b
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_23

    .line 496
    :cond_1c
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x80

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 497
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_23

    .line 506
    :cond_1d
    add-int/lit16 v3, v3, -0xff

    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_24

    .line 510
    :cond_1e
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x80

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 511
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_24

    :pswitch_10
    move v1, v0

    .line 516
    :goto_25
    if-ge v1, v2, :cond_0

    .line 517
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-ge v3, v5, :cond_20

    .line 519
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 520
    if-nez v3, :cond_1f

    .line 521
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 540
    :goto_26
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-ge v3, v5, :cond_23

    .line 542
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 543
    if-nez v3, :cond_22

    .line 544
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 563
    :goto_27
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-ge v3, v5, :cond_26

    .line 565
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 566
    if-nez v3, :cond_25

    .line 567
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 516
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 524
    :cond_1f
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    div-int v3, v4, v3

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 525
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_26

    .line 530
    :cond_20
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    mul-int/lit8 v3, v3, 0x2

    .line 531
    if-ne v3, v6, :cond_21

    .line 532
    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_26

    .line 535
    :cond_21
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    rsub-int v3, v3, 0xff

    div-int v3, v4, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 536
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_26

    .line 547
    :cond_22
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    div-int v3, v4, v3

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 548
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_27

    .line 553
    :cond_23
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    mul-int/lit8 v3, v3, 0x2

    .line 554
    if-ne v3, v6, :cond_24

    .line 555
    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_27

    .line 558
    :cond_24
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    rsub-int v3, v3, 0xff

    div-int v3, v4, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 559
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto/16 :goto_27

    .line 570
    :cond_25
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    div-int v3, v4, v3

    rsub-int v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 571
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto/16 :goto_28

    .line 576
    :cond_26
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    mul-int/lit8 v3, v3, 0x2

    .line 577
    if-ne v3, v6, :cond_27

    .line 578
    invoke-virtual {p1, v1, v6}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto/16 :goto_28

    .line 581
    :cond_27
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    rsub-int v3, v3, 0xff

    div-int v3, v4, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 582
    invoke-virtual {p1, v1, v3}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto/16 :goto_28

    .line 588
    :goto_29
    :pswitch_11
    if-ge v0, v2, :cond_0

    .line 589
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 590
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-ge v3, v5, :cond_2b

    .line 592
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 593
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 603
    :cond_28
    :goto_2a
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 604
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-ge v3, v5, :cond_2c

    .line 606
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 607
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 617
    :cond_29
    :goto_2b
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 618
    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-ge v3, v5, :cond_2d

    .line 620
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 621
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 588
    :cond_2a
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 598
    :cond_2b
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    if-le v1, v3, :cond_28

    .line 599
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_2a

    .line 612
    :cond_2c
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    if-le v1, v3, :cond_29

    .line 613
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_2b

    .line 626
    :cond_2d
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    if-le v1, v3, :cond_2a

    .line 627
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_2c

    .line 634
    :goto_2d
    :pswitch_12
    if-ge v0, v2, :cond_0

    .line 635
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    if-ne v1, v6, :cond_2e

    .line 636
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 643
    :goto_2e
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    if-ne v1, v6, :cond_2f

    .line 644
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 651
    :goto_2f
    iget-object v1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    if-ne v1, v6, :cond_30

    .line 652
    invoke-virtual {p1, v0, v6}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 634
    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 639
    :cond_2e
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    mul-int/2addr v1, v3

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 640
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    goto :goto_2e

    .line 647
    :cond_2f
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    mul-int/2addr v1, v3

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 648
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    goto :goto_2f

    .line 655
    :cond_30
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    mul-int/2addr v1, v3

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    div-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 656
    invoke-virtual {p1, v0, v1}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    goto :goto_30

    .line 661
    :goto_31
    :pswitch_13
    if-ge v0, v2, :cond_0

    .line 662
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v1

    iget-object v3, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit16 v1, v1, 0xff

    .line 663
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    iget-object v4, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xff

    .line 664
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    iget-object v5, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    iget-object v6, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit16 v4, v4, 0xff

    .line 666
    invoke-virtual {p1, v0, v1, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 673
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blend only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public getAlgorithm()LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/Blend;->a:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    return-object v0
.end method

.method public getOverlay()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->a:LCatalano/Imaging/Filters/Artistic/Blend$Algorithm;

    .line 180
    return-void
.end method

.method public setOverlay(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, LCatalano/Imaging/Filters/Artistic/Blend;->b:LCatalano/Imaging/FastBitmap;

    .line 164
    return-void
.end method
