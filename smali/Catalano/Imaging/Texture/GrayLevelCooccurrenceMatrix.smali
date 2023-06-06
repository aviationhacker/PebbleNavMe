.class public LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 63
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 67
    iput v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 63
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 67
    iput v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 151
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 152
    return-void
.end method

.method public constructor <init>(ILCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 63
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 67
    iput v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 160
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 161
    iput-object p2, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 162
    return-void
.end method

.method public constructor <init>(ILCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 63
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 67
    iput v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 171
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 172
    iput-object p2, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 173
    iput-boolean p3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 174
    return-void
.end method

.method public constructor <init>(ILCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 63
    iput-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 67
    iput v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 184
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 185
    iput-object p2, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 186
    iput-boolean p3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 187
    iput-boolean p4, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 188
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 266
    move v0, v1

    move v2, v1

    .line 267
    :goto_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 268
    :goto_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 269
    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 270
    if-le v4, v2, :cond_2

    .line 268
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return v2

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method private a([[DI)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 253
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 254
    :goto_1
    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 255
    aget-object v3, p1, v0

    aget-wide v4, v3, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[[D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 197
    const/16 v0, 0xff

    .line 198
    iget-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 199
    :cond_0
    iput v2, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 201
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 203
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 204
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 206
    sget-object v1, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$1;->a:[I

    iget-object v3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    invoke-virtual {v3}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 242
    :cond_1
    iget-boolean v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    if-eqz v1, :cond_2

    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a([[DI)V

    .line 243
    :cond_2
    return-object v0

    .line 208
    :cond_3
    add-int/lit8 v2, v2, 0x1

    :pswitch_0
    if-ge v2, v4, :cond_1

    .line 209
    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    :goto_1
    if-ge v1, v5, :cond_3

    .line 210
    iget v3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v3, v1, v3

    invoke-virtual {p1, v2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    aget-wide v8, v3, v6

    add-double/2addr v8, v12

    aput-wide v8, v3, v6

    .line 211
    iget v3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :pswitch_1
    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 217
    :goto_3
    iget v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v6, v5, v6

    if-ge v1, v6, :cond_4

    .line 218
    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    aget-object v6, v0, v6

    iget v7, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v7, v3, v7

    iget v8, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    add-int/2addr v8, v1

    invoke-virtual {p1, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    aget-wide v8, v6, v7

    add-double/2addr v8, v12

    aput-wide v8, v6, v7

    .line 219
    iget v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 216
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 224
    :pswitch_2
    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    move v3, v1

    :goto_4
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 225
    :goto_5
    if-ge v1, v5, :cond_5

    .line 226
    iget v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v6, v3, v6

    invoke-virtual {p1, v6, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    aget-object v6, v0, v6

    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    aget-wide v8, v6, v7

    add-double/2addr v8, v12

    aput-wide v8, v6, v7

    .line 227
    iget v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 224
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 232
    :pswitch_3
    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    move v3, v1

    :goto_6
    if-ge v3, v4, :cond_1

    .line 233
    add-int/lit8 v6, v5, -0x1

    move v1, v2

    .line 234
    :goto_7
    iget v7, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v7, v5, v7

    if-ge v1, v7, :cond_6

    .line 235
    sub-int v7, v6, v1

    invoke-virtual {p1, v3, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    aget-object v7, v0, v7

    iget v8, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v8, v3, v8

    iget v9, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v1

    invoke-virtual {p1, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    aget-wide v10, v7, v8

    add-double/2addr v10, v12

    aput-wide v10, v7, v8

    .line 236
    iget v7, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 232
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 242
    :cond_7
    iget v1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDegree()LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    return v0
.end method

.method public getNumPairs()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->d:I

    return v0
.end method

.method public isAutoGray()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    return v0
.end method

.method public isNormalize()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    return v0
.end method

.method public setAutoGray(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->b:Z

    .line 83
    return-void
.end method

.method public setDegree(LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->a:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 115
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->e:I

    .line 131
    return-void
.end method

.method public setNormalize(Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;->c:Z

    .line 99
    return-void
.end method
