.class public Lcom/jabistudio/androidjhlabs/filter/OilFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    .line 27
    const/16 v0, 0x100

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    .line 30
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 21

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v8, v1, [I

    .line 71
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v9, v1, [I

    .line 72
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v10, v1, [I

    .line 73
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v11, v1, [I

    .line 74
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v12, v1, [I

    .line 75
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    new-array v13, v1, [I

    .line 76
    mul-int v1, p1, p2

    new-array v14, v1, [I

    .line 78
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_9

    .line 79
    const/4 v1, 0x0

    move v5, v1

    move v6, v2

    :goto_1
    move/from16 v0, p1

    if-ge v5, v0, :cond_8

    .line 80
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    if-ge v1, v2, :cond_0

    .line 81
    const/4 v2, 0x0

    aput v2, v13, v1

    aput v2, v12, v1

    aput v2, v11, v1

    aput v2, v10, v1

    aput v2, v9, v1

    aput v2, v8, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    neg-int v1, v1

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    if-gt v1, v2, :cond_3

    .line 84
    add-int v2, v7, v1

    .line 86
    if-ltz v2, :cond_2

    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    .line 87
    mul-int v3, v2, p1

    .line 88
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    neg-int v2, v2

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    if-gt v2, v4, :cond_2

    .line 89
    add-int v4, v5, v2

    .line 90
    if-ltz v4, :cond_1

    move/from16 v0, p1

    if-ge v4, v0, :cond_1

    .line 91
    add-int/2addr v4, v3

    aget v4, p3, v4

    .line 92
    shr-int/lit8 v15, v4, 0x10

    and-int/lit16 v15, v15, 0xff

    .line 93
    shr-int/lit8 v16, v4, 0x8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 94
    and-int/lit16 v4, v4, 0xff

    .line 95
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    move/from16 v17, v0

    mul-int v17, v17, v15

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    .line 96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    move/from16 v18, v0

    mul-int v18, v18, v16

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    move/from16 v19, v0

    mul-int v19, v19, v4

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    .line 98
    aget v20, v11, v17

    add-int v15, v15, v20

    aput v15, v11, v17

    .line 99
    aget v15, v12, v18

    add-int v15, v15, v16

    aput v15, v12, v18

    .line 100
    aget v15, v13, v19

    add-int/2addr v4, v15

    aput v4, v13, v19

    .line 101
    aget v4, v8, v17

    add-int/lit8 v4, v4, 0x1

    aput v4, v8, v17

    .line 102
    aget v4, v9, v18

    add-int/lit8 v4, v4, 0x1

    aput v4, v9, v18

    .line 103
    aget v4, v10, v19

    add-int/lit8 v4, v4, 0x1

    aput v4, v10, v19

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 83
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 109
    :cond_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    if-ge v1, v15, :cond_7

    .line 111
    aget v15, v8, v1

    aget v16, v8, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    move v4, v1

    .line 113
    :cond_4
    aget v15, v9, v1

    aget v16, v9, v3

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    move v3, v1

    .line 115
    :cond_5
    aget v15, v10, v1

    aget v16, v10, v2

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    move v2, v1

    .line 110
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 118
    :cond_7
    aget v1, v11, v4

    aget v4, v8, v4

    div-int/2addr v1, v4

    .line 119
    aget v4, v12, v3

    aget v3, v9, v3

    div-int v3, v4, v3

    .line 120
    aget v4, v13, v2

    aget v2, v10, v2

    div-int v2, v4, v2

    .line 121
    aget v4, p3, v6

    const/high16 v15, -0x1000000

    and-int/2addr v4, v15

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v2

    aput v1, v14, v6

    .line 122
    add-int/lit8 v2, v6, 0x1

    .line 79
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v2

    goto/16 :goto_1

    .line 78
    :cond_8
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v2, v6

    goto/16 :goto_0

    .line 125
    :cond_9
    return-object v14
.end method

.method public getLevels()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    return v0
.end method

.method public setLevels(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->b:I

    .line 57
    return-void
.end method

.method public setRange(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/OilFilter;->a:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "Stylize/Oil..."

    return-object v0
.end method
