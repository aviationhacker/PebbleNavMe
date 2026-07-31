.class public LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;,
        LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;,
        LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;
    }
.end annotation


# static fields
.field public static final Orientations:I = 0x100

.field public static final Points:I = 0x2b

.field public static final Scales:I = 0x40

.field public static final Size:I = 0x7

.field static a:[I


# instance fields
.field private b:I

.field private c:F

.field public descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

.field public lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

.field public orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

.field public patternSizes:[I

.field public pointsValues:[I

.field public step:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x200

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->a:[I

    return-void

    :array_0
    .array-data 4
        0x194
        0x1af
        0x332
        0x1ff
        0xb5
        0x34
        0x137
        0x36a
        0x306
        0x21f
        0x2cf
        0xe6
        0x1a1
        0xcd
        0xb
        0x230
        0x95
        0x109
        0x27
        0x132
        0xa5
        0x359
        0xfa
        0x8
        0x3d
        0xf
        0x37
        0x2cd
        0x2c
        0x19c
        0x250
        0x86
        0x2f9
        0x2b7
        0x294
        0x30e
        0x271
        0x1e7
        0x225
        0x204
        0x10f
        0x299
        0x2fa
        0x188
        0xb2
        0x31c
        0x305
        0x1f
        0x2a0
        0x34d
        0x224
        0x31a
        0x2a5
        0x28e
        0xf1
        0x33f
        0xe1
        0xee
        0x351
        0x53
        0x2b3
        0x1e4
        0x33a
        0x2c3
        0x7a
        0x205
        0x247
        0x2db
        0x148
        0x153
        0x23b
        0x1db
        0x18a
        0x1d8
        0x244
        0x17d
        0x89
        0x5d
        0x17c
        0x147
        0x26b
        0x2d9
        0x328
        0xda
        0xd5
        0x1cb
        0x8d
        0x326
        0x155
        0x5f
        0x17e
        0x238
        0x7c
        0x2ee
        0xc1
        0x2ed
        0x2c2
        0x34b
        0x4f
        0xc7
        0x13d
        0x149
        0x300
        0xc6
        0x64
        0x1d2
        0x265
        0x4e
        0x232
        0x30f
        0x2b1
        0x88
        0x346
        0x5e
        0x8e
        0xa4
        0x2a7
        0xdb
        0x1a3
        0x16e
        0x1a2
        0x1a7
        0x4d
        0x59
        0x20b
        0x103
        0x2ab
        0x138
        0x22b
        0x14
        0x1d6
        0x2ac
        0x7b
        0x1ca
        0x1c5
        0x341
        0x48
        0x71
        0xfd
        0x6c
        0x139
        0x19
        0x99
        0x288
        0x19b
        0x25f
        0x26a
        0x80
        0x131
        0xe8
        0x12d
        0x54
        0x38
        0x108
        0x173
        0x2e
        0x197
        0x168
        0x26
        0x63
        0xb0
        0x2c6
        0x72
        0x242
        0x42
        0x174
        0x28d
        0x81
        0x167
        0x1a8
        0x9f
        0x335
        0xa
        0x143
        0x189
        0x5
        0x154
        0x37b
        0x9
        0x316
        0x2f
        0x0
        0xaf
        0x15a
        0xec
        0x1a
        0xac
        0x93
        0x23e
        0x231
        0x20
        0x126
        0x1ad
        0x2d4
        0x2f3
        0x18e
        0x313
        0x120
        0x12b
        0x301
        0x235
        0x2ff
        0x2d2
        0x2f5
        0xe0
        0x1d1
        0x2d3
        0x1f2
        0x1d3
        0xeb
        0x7f
        0x322
        0x1be
        0xe9
        0x220
        0x1e2
        0x320
        0x13e
        0x10
        0x214
        0x321
        0x1b9
        0x22a
        0xad
        0x3c
        0x212
        0x2c9
        0x1d5
        0x1e
        0xd4
        0x276
        0x383
        0xaa
        0x10a
        0x31f
        0x58
        0x31
        0x200
        0x18f
        0x17
        0x1f4
        0x6b
        0x20c
        0x5a
        0xc2
        0x8f
        0x87
        0xc0
        0xce
        0x159
        0x94
        0x47
        0x77
        0x65
        0x233
        0x366
        0x9e
        0xfe
        0xd6
        0x114
        0x1d0
        0x14c
        0x2d5
        0xbc
        0x181
        0x18
        0x1dc
        0x28
        0xe7
        0x26c
        0xab
        0x102
        0x43
        0x6d
        0x34c
        0xf4
        0xbb
        0x184
        0x2bd
        0x2b2
        0x32
        0x7
        0x352
        0x1df
        0x30
        0x20a
        0x16
        0x9a
        0xc
        0x293
        0x2e0
        0x28f
        0x241
        0x2e1
        0x33e
        0x32b
        0xae
        0x15
        0xed
        0x14f
        0x161
        0xea
        0x35
        0x10e
        0x3e
        0xb6
        0x2d
        0xb1
        0xf5
        0x32c
        0x2a1
        0x163
        0x22c
        0x264
        0xa6
        0xcc
        0x36
        0xf8
        0x16d
        0xe2
        0xf2
        0x1c4
        0x2bc
        0x2ad
        0x23d
        0xe
        0x34a
        0x1e1
        0x1d4
        0x30d
        0x234
        0x1a0
        0xb3
        0x195
        0x23
        0x333
        0x260
        0x270
        0x16f
        0x62
        0x283
        0x1c0
        0x2
        0x1cc
        0x2a4
        0x1b8
        0xf0
        0x82
        0x92
        0xb8
        0xb9
        0x1ae
        0x41
        0x327
        0x179
        0x52
        0x79
        0x2c4
        0xef
        0x136
        0x8a
        0x254
        0x2da
        0x23f
        0x1dd
        0x353
        0x31d
        0xf7
        0x1b
        0x55
        0x24a
        0x133
        0x30b
        0x146
        0x1ee
        0x358
        0x144
        0x33b
        0x60
        0x2ec
        0xd
        0x18d
        0x7d
        0x2b0
        0x2be
        0x5c
        0x125
        0x2cc
        0x115
        0x8c
        0x70
        0x4
        0x50
        0x357
        0x347
        0x1
        0x19d
        0x15b
        0x248
        0x1ed
        0x121
        0x2b8
        0x13
        0x2ef
        0x17b
        0x4c
        0x49
        0x73
        0x6
        0x24e
        0xb7
        0x2de
        0xc5
        0x1e3
        0xd9
        0x158
        0x14a
        0x190
        0xba
        0xf3
        0x24b
        0xdc
        0x30c
        0xc8
        0x319
        0xf6
        0x338
        0x29
        0x2df
        0x243
        0x51
        0x2bf
        0x142
        0x2f8
        0x2d0
        0x8b
        0x1e0
        0x1ea
        0x5b
        0x32e
        0x32d
        0xa3
        0x98
        0x1e8
        0x2fb
        0x107
        0x1a9
        0x19a
        0x240
        0x78
        0x13f
        0x29c
        0x96
        0xa0
        0x12e
        0x1eb
        0x203
        0x104
        0x91
        0x1ac
        0x61
        0xfb
        0x18b
        0x110
        0xfc
        0x12
        0x6a
        0x166
        0x356
        0x1e5
        0x90
        0x226
        0x83
        0x85
        0x17a
        0x44
        0x66
        0x68
        0x3a
        0x169
        0x113
        0xd1
        0x2b9
        0x246
        0x152
        0x2e6
        0x24d
        0x145
        0x198
        0xe5
        0x1c
        0x130
        0xbf
        0xbd
        0x6e
        0x7e
        0x1e6
        0xd3
        0x223
        0x215
        0x46
        0xd7
        0x29e
        0xf9
        0x24
        0x245
        0x185
        0x25d
        0x14b
        0x206
        0x1ba
        0x336
    .end array-data
.end method

.method public constructor <init>(IF)V
    .locals 26

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v4, 0x40

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->patternSizes:[I

    .line 104
    const/16 v4, 0x2b

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->pointsValues:[I

    .line 109
    const/16 v4, 0x200

    new-array v4, v4, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    move-object/from16 v0, p0

    iput-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    .line 114
    const/16 v4, 0x2d

    new-array v4, v4, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    move-object/from16 v0, p0

    iput-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    .line 122
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->b:I

    .line 123
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    .line 125
    const v4, 0xac000

    new-array v4, v4, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move-object/from16 v0, p0

    iput-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    .line 127
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move/from16 v0, p1

    int-to-double v6, v0

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 128
    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    const-wide v6, 0x3fe62e42fefa39efL    # 0.6931471805599453

    move/from16 v0, p1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->step:D

    .line 133
    const/16 v4, 0x8

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 135
    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    .line 136
    const-wide v6, 0x3fb5555555555555L    # 0.08333333333333333

    .line 138
    sub-double v12, v4, v6

    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    div-double/2addr v12, v14

    .line 140
    const/16 v8, 0x8

    new-array v14, v8, [D

    const/4 v8, 0x0

    aput-wide v4, v14, v8

    const/4 v8, 0x1

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    mul-double v16, v16, v12

    sub-double v16, v4, v16

    aput-wide v16, v14, v8

    const/4 v8, 0x2

    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    mul-double v16, v16, v12

    sub-double v16, v4, v16

    aput-wide v16, v14, v8

    const/4 v8, 0x3

    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    mul-double v16, v16, v12

    sub-double v16, v4, v16

    aput-wide v16, v14, v8

    const/4 v8, 0x4

    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    mul-double v16, v16, v12

    sub-double v16, v4, v16

    aput-wide v16, v14, v8

    const/4 v8, 0x5

    const-wide/high16 v16, 0x4034000000000000L    # 20.0

    mul-double v12, v12, v16

    sub-double/2addr v4, v12

    aput-wide v4, v14, v8

    const/4 v4, 0x6

    aput-wide v6, v14, v4

    const/4 v4, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v14, v4

    .line 148
    const/16 v4, 0x8

    new-array v12, v4, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x4

    const/4 v5, 0x4

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x6

    const/4 v5, 0x6

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    const/4 v4, 0x7

    const/4 v5, 0x6

    aget-wide v6, v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v6, v16

    aput-wide v6, v12, v4

    .line 158
    const/4 v4, 0x0

    move v8, v4

    :goto_0
    const/16 v4, 0x40

    if-ge v8, v4, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->patternSizes:[I

    const/4 v5, 0x0

    aput v5, v4, v8

    .line 161
    int-to-double v4, v8

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 163
    const/4 v4, 0x0

    move v7, v4

    :goto_1
    const/16 v4, 0x100

    if-ge v7, v4, :cond_3

    .line 166
    mul-int/lit8 v4, v7, 0x2

    int-to-double v4, v4

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v18

    const-wide/high16 v18, 0x4070000000000000L    # 256.0

    div-double v18, v4, v18

    .line 167
    const/4 v5, 0x0

    .line 169
    const/4 v4, 0x0

    move v6, v4

    :goto_2
    const/16 v4, 0x8

    if-ge v6, v4, :cond_2

    .line 171
    const/4 v4, 0x0

    :goto_3
    aget v13, v9, v6

    if-ge v4, v13, :cond_1

    .line 176
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    aget v13, v9, v6

    int-to-double v0, v13

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    rem-int/lit8 v13, v6, 0x2

    int-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    .line 177
    mul-int/lit8 v13, v4, 0x2

    int-to-double v0, v13

    move-wide/from16 v22, v0

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    aget v13, v9, v6

    int-to-double v0, v13

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    add-double v20, v20, v22

    add-double v20, v20, v18

    .line 180
    new-instance v13, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    aget-wide v22, v14, v6

    .line 181
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    mul-double v22, v22, v16

    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    float-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v15, v0

    aget-wide v22, v14, v6

    .line 182
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v22

    mul-double v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aget-wide v22, v12, v6

    mul-double v22, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v13, v0, v15, v1, v2}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;-><init>(LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;FFF)V

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    mul-int/lit16 v0, v8, 0x100

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2b

    mul-int/lit8 v21, v7, 0x2b

    add-int v20, v20, v21

    add-int v20, v20, v5

    aput-object v13, v15, v20

    .line 189
    aget-wide v20, v14, v6

    aget-wide v22, v12, v6

    add-double v20, v20, v22

    mul-double v20, v20, v16

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v13, v0

    add-int/lit8 v13, v13, 0x1

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->patternSizes:[I

    aget v15, v15, v8

    if-ge v15, v13, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->patternSizes:[I

    aput v13, v15, v8

    .line 193
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 169
    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_2

    .line 163
    :cond_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_1

    .line 158
    :cond_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_0

    .line 199
    :cond_4
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x2d

    if-ge v4, v5, :cond_5

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    new-instance v6, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;-><init>(LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;)V

    aput-object v6, v5, v4

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 204
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const/4 v5, 0x5

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x2

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const/4 v5, 0x5

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const/4 v5, 0x4

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const/4 v5, 0x5

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    const/4 v5, 0x6

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const/4 v5, 0x7

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const/16 v5, 0x8

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const/16 v5, 0xb

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const/4 v5, 0x6

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const/16 v5, 0x8

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const/4 v5, 0x7

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const/16 v5, 0x8

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const/16 v5, 0x9

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const/16 v5, 0xb

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const/16 v5, 0xa

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const/4 v5, 0x6

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const/16 v5, 0xb

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const/4 v5, 0x7

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x12

    aget-object v4, v4, v5

    const/16 v5, 0xc

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x12

    aget-object v4, v4, v5

    const/16 v5, 0xf

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    const/16 v5, 0xd

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    const/16 v5, 0x10

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x14

    aget-object v4, v4, v5

    const/16 v5, 0xe

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x14

    aget-object v4, v4, v5

    const/16 v5, 0x11

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    const/16 v5, 0xc

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    const/16 v5, 0xe

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    const/16 v5, 0xd

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    const/16 v5, 0xf

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    const/16 v5, 0xe

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    const/16 v5, 0x10

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    const/16 v5, 0xf

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    const/16 v5, 0x11

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    const/16 v5, 0x10

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    const/16 v5, 0xc

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1a

    aget-object v4, v4, v5

    const/16 v5, 0x11

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1a

    aget-object v4, v4, v5

    const/16 v5, 0xd

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    const/16 v5, 0x12

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    const/16 v5, 0x15

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1c

    aget-object v4, v4, v5

    const/16 v5, 0x13

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1c

    aget-object v4, v4, v5

    const/16 v5, 0x16

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1d

    aget-object v4, v4, v5

    const/16 v5, 0x14

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1d

    aget-object v4, v4, v5

    const/16 v5, 0x17

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    const/16 v5, 0x12

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    const/16 v5, 0x14

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    const/16 v5, 0x13

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    const/16 v5, 0x15

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    const/16 v5, 0x14

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    const/16 v5, 0x16

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    const/16 v5, 0x15

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    const/16 v5, 0x17

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x22

    aget-object v4, v4, v5

    const/16 v5, 0x16

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x22

    aget-object v4, v4, v5

    const/16 v5, 0x12

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x23

    aget-object v4, v4, v5

    const/16 v5, 0x17

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x23

    aget-object v4, v4, v5

    const/16 v5, 0x13

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x24

    aget-object v4, v4, v5

    const/16 v5, 0x18

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x24

    aget-object v4, v4, v5

    const/16 v5, 0x1b

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x25

    aget-object v4, v4, v5

    const/16 v5, 0x19

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x25

    aget-object v4, v4, v5

    const/16 v5, 0x1c

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x26

    aget-object v4, v4, v5

    const/16 v5, 0x1a

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x26

    aget-object v4, v4, v5

    const/16 v5, 0x1d

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x27

    aget-object v4, v4, v5

    const/16 v5, 0x1e

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x27

    aget-object v4, v4, v5

    const/16 v5, 0x21

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x28

    aget-object v4, v4, v5

    const/16 v5, 0x1f

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x28

    aget-object v4, v4, v5

    const/16 v5, 0x22

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x29

    aget-object v4, v4, v5

    const/16 v5, 0x20

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x29

    aget-object v4, v4, v5

    const/16 v5, 0x23

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2a

    aget-object v4, v4, v5

    const/16 v5, 0x24

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2a

    aget-object v4, v4, v5

    const/16 v5, 0x27

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2b

    aget-object v4, v4, v5

    const/16 v5, 0x25

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2b

    aget-object v4, v4, v5

    const/16 v5, 0x28

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    const/16 v5, 0x26

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    const/16 v5, 0x29

    iput v5, v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    .line 224
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v6, v6, v4

    iget v6, v6, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    aget-object v5, v5, v6

    iget v5, v5, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->a:F

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v7, v7, v4

    iget v7, v7, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    aget-object v6, v6, v7

    iget v6, v6, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->a:F

    sub-float/2addr v5, v6

    .line 227
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v7, v7, v4

    iget v7, v7, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->a:I

    aget-object v6, v6, v7

    iget v6, v6, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->b:F

    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->lookupTable:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v8, v8, v4

    iget v8, v8, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->b:I

    aget-object v7, v7, v8

    iget v7, v7, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$c;->b:F

    sub-float/2addr v6, v7

    .line 228
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    .line 229
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v8, v8, v4

    div-float/2addr v5, v7

    float-to-double v10, v5

    const-wide/high16 v12, 0x40b0000000000000L    # 4096.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v5, v10

    iput v5, v8, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->c:I

    .line 230
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->orientationPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;

    aget-object v5, v5, v4

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x40b0000000000000L    # 4096.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$b;->d:I

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 234
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const/4 v4, 0x1

    move v5, v4

    :goto_6
    const/16 v4, 0x2b

    if-ge v5, v4, :cond_8

    .line 236
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_7

    .line 237
    new-instance v7, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v5, v4}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;-><init>(LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;II)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 235
    :cond_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    .line 239
    :cond_8
    const/4 v4, 0x0

    :goto_8
    const/16 v5, 0x200

    if-ge v4, v5, :cond_9

    .line 240
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    new-instance v7, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v9}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;-><init>(LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;II)V

    aput-object v7, v5, v4

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 244
    :cond_9
    const/4 v4, 0x0

    move v5, v4

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    array-length v4, v4

    if-ge v5, v4, :cond_a

    .line 245
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->descriptionPairs:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    sget-object v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->a:[I

    aget v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern$a;

    aput-object v4, v7, v5

    .line 244
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_9

    .line 247
    :cond_a
    return-void

    .line 133
    :array_0
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x1
    .end array-data
.end method


# virtual methods
.method public getOctaves()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->b:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;->c:F

    return v0
.end method
