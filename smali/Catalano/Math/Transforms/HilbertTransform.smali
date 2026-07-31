.class public LCatalano/Math/Transforms/HilbertTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FHT([DLCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 42
    array-length v2, p0

    .line 45
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v0, :cond_3

    .line 49
    new-array v3, v2, [LCatalano/Math/ComplexNumber;

    move v0, v1

    .line 50
    :goto_0
    if-ge v0, v2, :cond_0

    .line 51
    new-instance v4, LCatalano/Math/ComplexNumber;

    aget-wide v6, p0, v0

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v4, v3, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v3, v0}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 57
    const/4 v0, 0x1

    :goto_1
    div-int/lit8 v4, v2, 0x2

    if-ge v0, v4, :cond_1

    .line 59
    aget-object v4, v3, v0

    iget-wide v6, v4, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v10

    iput-wide v6, v4, LCatalano/Math/ComplexNumber;->real:D

    .line 60
    aget-object v4, v3, v0

    iget-wide v6, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v6, v10

    iput-wide v6, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    if-ge v0, v2, :cond_2

    .line 67
    aget-object v4, v3, v0

    iput-wide v8, v4, LCatalano/Math/ComplexNumber;->real:D

    .line 68
    aget-object v4, v3, v0

    iput-wide v8, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    :cond_2
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v3, v0}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 75
    :goto_3
    if-ge v1, v2, :cond_4

    .line 76
    aget-object v0, v3, v1

    iget-wide v4, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    aput-wide v4, p0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    :cond_3
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {p0, v0}, LCatalano/Math/Transforms/HilbertTransform;->FHT([DLCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 89
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_4

    .line 90
    aget-wide v2, p0, v0

    neg-double v2, v2

    aput-wide v2, p0, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 92
    :cond_4
    return-void
.end method

.method public static FHT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    .line 100
    array-length v3, p0

    .line 103
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v0, :cond_2

    .line 106
    invoke-virtual {p0}, [LCatalano/Math/ComplexNumber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Math/ComplexNumber;

    check-cast v0, [LCatalano/Math/ComplexNumber;

    .line 109
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 112
    const/4 v1, 0x1

    :goto_0
    div-int/lit8 v4, v3, 0x2

    if-ge v1, v4, :cond_0

    .line 113
    aget-object v4, v0, v1

    iget-wide v6, v4, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v10

    iput-wide v6, v4, LCatalano/Math/ComplexNumber;->real:D

    .line 114
    aget-object v4, v0, v1

    iget-wide v6, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v6, v10

    iput-wide v6, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    div-int/lit8 v1, v3, 0x2

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 120
    aget-object v4, v0, v1

    iput-wide v8, v4, LCatalano/Math/ComplexNumber;->real:D

    .line 121
    aget-object v4, v0, v1

    iput-wide v8, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    :cond_1
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 129
    :goto_2
    if-ge v2, v3, :cond_3

    .line 130
    aget-object v1, p0, v2

    aget-object v4, v0, v2

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    iput-wide v4, v1, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 135
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 136
    aget-object v1, p0, v0

    iput-wide v8, v1, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 138
    :cond_3
    return-void
.end method

.method public static FHT2([[LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 147
    array-length v3, p0

    .line 148
    aget-object v0, p0, v1

    array-length v0, v0

    .line 149
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v4, v0, [LCatalano/Math/ComplexNumber;

    move v2, v1

    .line 151
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 153
    :goto_1
    if-ge v0, v3, :cond_0

    .line 154
    aget-object v5, p0, v2

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    invoke-static {v4, p1}, LCatalano/Math/Transforms/HilbertTransform;->FHT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 158
    :goto_2
    if-ge v0, v3, :cond_1

    .line 159
    aget-object v5, p0, v2

    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :cond_2
    new-array v4, v3, [LCatalano/Math/ComplexNumber;

    move v2, v1

    .line 165
    :goto_3
    if-ge v2, v3, :cond_5

    move v0, v1

    .line 167
    :goto_4
    if-ge v0, v3, :cond_3

    .line 168
    aget-object v5, p0, v0

    aget-object v5, v5, v2

    aput-object v5, v4, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 170
    :cond_3
    invoke-static {v4, p1}, LCatalano/Math/Transforms/HilbertTransform;->FHT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 172
    :goto_5
    if-ge v0, v3, :cond_4

    .line 173
    aget-object v5, p0, v0

    aget-object v6, v4, v0

    aput-object v6, v5, v2

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 165
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 175
    :cond_5
    return-void
.end method
