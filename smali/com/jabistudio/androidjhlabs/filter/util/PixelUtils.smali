.class public Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD:I = 0x4

.field public static final ALPHA:I = 0x13

.field public static final ALPHA_TO_GRAY:I = 0x14

.field public static final AVERAGE:I = 0xd

.field public static final CLEAR:I = 0xf

.field public static final COLOR:I = 0xb

.field public static final DIFFERENCE:I = 0x6

.field public static final DISSOLVE:I = 0x11

.field public static final DST_IN:I = 0x12

.field public static final EXCHANGE:I = 0x10

.field public static final HUE:I = 0x8

.field public static final MAX:I = 0x3

.field public static final MIN:I = 0x2

.field public static final MULTIPLY:I = 0x7

.field public static final NORMAL:I = 0x1

.field public static final OVERLAY:I = 0xe

.field public static final REPLACE:I = 0x0

.field public static final SATURATION:I = 0x9

.field public static final SCREEN:I = 0xc

.field public static final SUBTRACT:I = 0x5

.field public static final VALUE:I = 0xa

.field private static a:Ljava/util/Random;

.field private static final b:[F

.field private static final c:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->a:Ljava/util/Random;

    .line 85
    new-array v0, v1, [F

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    .line 86
    new-array v0, v1, [F

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brightness(I)I
    .locals 3

    .prologue
    .line 69
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 70
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 71
    and-int/lit16 v2, p0, 0xff

    .line 72
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static clamp(I)I
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 57
    if-gez p0, :cond_1

    .line 58
    const/4 p0, 0x0

    .line 61
    :cond_0
    :goto_0
    return p0

    .line 59
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 60
    goto :goto_0
.end method

.method public static combinePixels(III)I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xff

    invoke-static {p0, p1, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->combinePixels(IIII)I

    move-result v0

    return v0
.end method

.method public static combinePixels(IIII)I
    .locals 10

    .prologue
    .line 98
    if-nez p2, :cond_0

    .line 221
    :goto_0
    return p0

    .line 100
    :cond_0
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v3, v0, 0xff

    .line 101
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v2, v0, 0xff

    .line 102
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, v0, 0xff

    .line 103
    and-int/lit16 v0, p0, 0xff

    .line 104
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v7, v4, 0xff

    .line 105
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v6, v4, 0xff

    .line 106
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v5, v4, 0xff

    .line 107
    and-int/lit16 v4, p1, 0xff

    .line 109
    packed-switch p2, :pswitch_data_0

    .line 213
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v8, 0xff

    if-ne p3, v8, :cond_2

    const/16 v8, 0xff

    if-eq v3, v8, :cond_3

    .line 214
    :cond_2
    mul-int/2addr v3, p3

    div-int/lit16 v3, v3, 0xff

    .line 215
    rsub-int v8, v3, 0xff

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0xff

    .line 216
    mul-int/2addr v2, v3

    mul-int/2addr v6, v7

    add-int/2addr v2, v6

    div-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 217
    mul-int/2addr v1, v3

    mul-int/2addr v5, v7

    add-int/2addr v1, v5

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 218
    mul-int/2addr v0, v3

    mul-int/2addr v4, v7

    add-int/2addr v0, v4

    div-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    .line 219
    add-int/2addr v3, v7

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 221
    :cond_3
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    or-int p0, v1, v0

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 115
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 118
    :pswitch_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 119
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 120
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 123
    :pswitch_3
    add-int/2addr v2, v6

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 124
    add-int/2addr v1, v5

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 125
    add-int/2addr v0, v4

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    goto :goto_1

    .line 128
    :pswitch_4
    sub-int v2, v6, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 129
    sub-int v1, v5, v1

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 130
    sub-int v0, v4, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    goto :goto_1

    .line 133
    :pswitch_5
    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 134
    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 135
    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    goto/16 :goto_1

    .line 138
    :pswitch_6
    mul-int/2addr v2, v6

    div-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 139
    mul-int/2addr v1, v5

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 140
    mul-int/2addr v0, v4

    div-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    goto/16 :goto_1

    .line 143
    :pswitch_7
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->a:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-gt v8, v3, :cond_1

    move v0, v4

    move v1, v5

    move v2, v6

    .line 146
    goto/16 :goto_1

    .line 150
    :pswitch_8
    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    .line 151
    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 152
    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_1

    .line 158
    :pswitch_9
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    invoke-static {v2, v1, v0, v8}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 159
    sget-object v8, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    invoke-static {v2, v1, v0, v8}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 160
    packed-switch p2, :pswitch_data_1

    .line 175
    :goto_2
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 176
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v2, v1, 0xff

    .line 177
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 178
    and-int/lit16 v0, v0, 0xff

    .line 179
    goto/16 :goto_1

    .line 162
    :pswitch_a
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    const/4 v8, 0x0

    aget v2, v2, v8

    aput v2, v0, v1

    goto :goto_2

    .line 165
    :pswitch_b
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    const/4 v1, 0x1

    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    const/4 v8, 0x1

    aget v2, v2, v8

    aput v2, v0, v1

    goto :goto_2

    .line 168
    :pswitch_c
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    const/4 v1, 0x2

    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    const/4 v8, 0x2

    aget v2, v2, v8

    aput v2, v0, v1

    goto :goto_2

    .line 171
    :pswitch_d
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    const/4 v8, 0x0

    aget v2, v2, v8

    aput v2, v0, v1

    .line 172
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->c:[F

    const/4 v1, 0x1

    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->b:[F

    const/4 v8, 0x1

    aget v2, v2, v8

    aput v2, v0, v1

    goto :goto_2

    .line 181
    :pswitch_e
    rsub-int v2, v2, 0xff

    rsub-int v8, v6, 0xff

    mul-int/2addr v2, v8

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 182
    rsub-int v1, v1, 0xff

    rsub-int v8, v5, 0xff

    mul-int/2addr v1, v8

    div-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    .line 183
    rsub-int v0, v0, 0xff

    rsub-int v8, v4, 0xff

    mul-int/2addr v0, v8

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    .line 184
    goto/16 :goto_1

    .line 187
    :pswitch_f
    rsub-int v8, v2, 0xff

    rsub-int v9, v6, 0xff

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    rsub-int v8, v8, 0xff

    .line 188
    mul-int v9, v2, v6

    div-int/lit16 v9, v9, 0xff

    .line 189
    mul-int/2addr v8, v2

    rsub-int v2, v2, 0xff

    mul-int/2addr v2, v9

    add-int/2addr v2, v8

    div-int/lit16 v2, v2, 0xff

    .line 190
    rsub-int v8, v1, 0xff

    rsub-int v9, v5, 0xff

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    rsub-int v8, v8, 0xff

    .line 191
    mul-int v9, v1, v5

    div-int/lit16 v9, v9, 0xff

    .line 192
    mul-int/2addr v8, v1

    rsub-int v1, v1, 0xff

    mul-int/2addr v1, v9

    add-int/2addr v1, v8

    div-int/lit16 v1, v1, 0xff

    .line 193
    rsub-int v8, v0, 0xff

    rsub-int v9, v4, 0xff

    mul-int/2addr v8, v9

    div-int/lit16 v8, v8, 0xff

    rsub-int v8, v8, 0xff

    .line 194
    mul-int v9, v0, v4

    div-int/lit16 v9, v9, 0xff

    .line 195
    mul-int/2addr v8, v0

    rsub-int v0, v0, 0xff

    mul-int/2addr v0, v9

    add-int/2addr v0, v8

    div-int/lit16 v0, v0, 0xff

    goto/16 :goto_1

    .line 198
    :pswitch_10
    const/16 v0, 0xff

    move v1, v0

    move v2, v0

    .line 199
    goto/16 :goto_1

    .line 201
    :pswitch_11
    mul-int v0, v6, v3

    div-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    .line 202
    mul-int v1, v5, v3

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 203
    mul-int v2, v4, v3

    div-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 204
    mul-int/2addr v3, v7

    div-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 205
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int p0, v0, v2

    goto/16 :goto_0

    .line 207
    :pswitch_12
    mul-int v0, v3, v7

    div-int/lit16 v0, v0, 0xff

    .line 208
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v6, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v5, 0x8

    or-int/2addr v0, v1

    or-int p0, v0, v4

    goto/16 :goto_0

    .line 210
    :pswitch_13
    rsub-int v0, v3, 0xff

    .line 211
    shl-int/lit8 v1, v3, 0x18

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    or-int p0, v1, v0

    goto/16 :goto_0

    .line 109
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
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static combinePixels(IIIII)I
    .locals 2

    .prologue
    .line 94
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v0, p1

    and-int v1, p0, p4

    invoke-static {v1, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->combinePixels(IIII)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getLineRGB([III[I)V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 252
    mul-int v1, p2, p1

    add-int/2addr v1, v0

    aget v1, p0, v1

    aput v1, p3, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method public static getRGB([IIIIII[I)V
    .locals 4

    .prologue
    .line 225
    const/4 v0, 0x0

    move v2, p2

    .line 226
    :goto_0
    add-int v1, p2, p4

    if-ge v2, v1, :cond_1

    move v1, v0

    move v0, p1

    .line 227
    :goto_1
    add-int v3, p1, p3

    if-ge v0, v3, :cond_0

    .line 228
    mul-int v3, v2, p5

    add-int/2addr v3, v0

    aget v3, p0, v3

    aput v3, p6, v1

    .line 229
    add-int/lit8 v1, v1, 0x1

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method public static interpolate(IIF)I
    .locals 2

    .prologue
    .line 65
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    return v0
.end method

.method public static nearColors(III)Z
    .locals 6

    .prologue
    .line 76
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 77
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 78
    and-int/lit16 v2, p0, 0xff

    .line 79
    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 80
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 81
    and-int/lit16 v5, p1, 0xff

    .line 82
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int v0, v1, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int v0, v2, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLineRGB([III[I)V
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 246
    mul-int v1, p2, p1

    add-int/2addr v1, v0

    aget v2, p3, v0

    aput v2, p0, v1

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public static setRGB([IIIIII[I)V
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    move v2, p2

    .line 236
    :goto_0
    add-int v1, p2, p4

    if-ge v2, v1, :cond_1

    move v1, v0

    move v0, p1

    .line 237
    :goto_1
    add-int v3, p1, p3

    if-ge v0, v3, :cond_0

    .line 238
    mul-int v3, v2, p5

    add-int/2addr v3, v0

    aget v4, p6, v1

    aput v4, p0, v3

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method
