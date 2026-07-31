.class public Lar/com/hjg/pngj/Deinterlacer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lar/com/hjg/pngj/ImageInfo;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->l:I

    .line 13
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->m:I

    .line 16
    iput v1, p0, Lar/com/hjg/pngj/Deinterlacer;->h:I

    .line 17
    iput-boolean v1, p0, Lar/com/hjg/pngj/Deinterlacer;->o:Z

    .line 20
    iput-object p1, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    .line 21
    iput v1, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    .line 22
    iput v1, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/Deinterlacer;->a(I)V

    .line 24
    invoke-direct {p0, v1}, Lar/com/hjg/pngj/Deinterlacer;->c(I)V

    .line 25
    return-void
.end method

.method static b(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 93
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad interlace pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 91
    :goto_0
    return-object v0

    .line 81
    :pswitch_1
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    goto :goto_0

    .line 83
    :pswitch_2
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    goto :goto_0

    .line 85
    :pswitch_3
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    goto :goto_0

    .line 87
    :pswitch_4
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    goto :goto_0

    .line 89
    :pswitch_5
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    goto :goto_0

    .line 91
    :pswitch_6
    new-array v0, v0, [B

    fill-array-data v0, :array_6

    goto :goto_0

    .line 77
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
    .end packed-switch

    .line 79
    :array_0
    .array-data 1
        0x8t
        0x8t
        0x0t
        0x0t
    .end array-data

    .line 81
    :array_1
    .array-data 1
        0x8t
        0x8t
        0x4t
        0x0t
    .end array-data

    .line 83
    :array_2
    .array-data 1
        0x4t
        0x8t
        0x0t
        0x4t
    .end array-data

    .line 85
    :array_3
    .array-data 1
        0x4t
        0x4t
        0x2t
        0x0t
    .end array-data

    .line 87
    :array_4
    .array-data 1
        0x2t
        0x4t
        0x0t
        0x2t
    .end array-data

    .line 89
    :array_5
    .array-data 1
        0x2t
        0x2t
        0x1t
        0x0t
    .end array-data

    .line 91
    :array_6
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x1t
    .end array-data
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 29
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->l:I

    .line 30
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    mul-int/2addr v0, p1

    iget v1, p0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->m:I

    .line 31
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->m:I

    if-ltz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->m:I

    iget-object v1, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-lt v0, v1, :cond_1

    .line 32
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v1, "bad row - this should not happen"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    if-ne v0, p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    .line 63
    invoke-static {p1}, Lar/com/hjg/pngj/Deinterlacer;->b(I)[B

    move-result-object v0

    .line 64
    aget-byte v2, v0, v1

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    .line 65
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    .line 66
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    .line 67
    const/4 v2, 0x3

    aget-byte v0, v0, v2

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    .line 68
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    sub-int/2addr v0, v2

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    div-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    sub-int/2addr v0, v2

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    div-int/2addr v0, v2

    :goto_2
    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->k:I

    .line 70
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->k:I

    if-nez v0, :cond_1

    .line 71
    iput v1, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    .line 72
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    iget-object v1, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->g:I

    .line 73
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    iget-object v1, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->f:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_1

    :cond_3
    move v0, v1

    .line 69
    goto :goto_2
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    .line 38
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    if-eqz v2, :cond_0

    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->l:I

    iget v3, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    .line 39
    :cond_0
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 40
    iput-boolean v1, p0, Lar/com/hjg/pngj/Deinterlacer;->o:Z

    .line 52
    :goto_0
    return v0

    .line 43
    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lar/com/hjg/pngj/Deinterlacer;->a(I)V

    .line 44
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    if-nez v2, :cond_2

    .line 45
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    .line 46
    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->a()Z

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    invoke-direct {p0, v0}, Lar/com/hjg/pngj/Deinterlacer;->c(I)V

    :goto_1
    move v0, v1

    .line 52
    goto :goto_0

    .line 50
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/Deinterlacer;->c(I)V

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->l:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->m:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->i:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->k:I

    return v0
.end method

.method public getBytesToRead()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->getPixelsToRead()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getCurrRowSeq()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->n:I

    return v0
.end method

.method public getPixelsToRead()I
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->f()I

    move-result v0

    return v0
.end method

.method public getTotalRawBytes()J
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 179
    const-wide/16 v4, 0x0

    move v6, v7

    .line 180
    :goto_0
    const/4 v0, 0x7

    if-gt v6, v0, :cond_2

    .line 181
    invoke-static {v6}, Lar/com/hjg/pngj/Deinterlacer;->b(I)[B

    move-result-object v2

    .line 182
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v3, v2, v13

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v3, v2, v7

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v2, v13

    sub-int/2addr v0, v3

    aget-byte v3, v2, v7

    div-int/2addr v0, v3

    .line 183
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v8, v2, v12

    if-le v3, v8, :cond_1

    iget-object v3, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v8, v2, v1

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x1

    aget-byte v8, v2, v12

    sub-int/2addr v3, v8

    aget-byte v2, v2, v1

    div-int v2, v3, v2

    .line 184
    :goto_2
    iget-object v3, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 185
    if-lez v0, :cond_3

    if-lez v2, :cond_3

    .line 186
    int-to-long v8, v0

    const-wide/16 v10, 0x1

    int-to-long v2, v3

    add-long/2addr v2, v10

    mul-long/2addr v2, v8

    add-long/2addr v2, v4

    .line 180
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 182
    goto :goto_1

    :cond_1
    move v2, v1

    .line 183
    goto :goto_2

    .line 188
    :cond_2
    return-wide v4

    :cond_3
    move-wide v2, v4

    goto :goto_3
.end method

.method public getTotalRows()I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 163
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->h:I

    if-nez v0, :cond_3

    move v3, v4

    .line 164
    :goto_0
    const/4 v0, 0x7

    if-gt v3, v0, :cond_3

    .line 165
    invoke-static {v3}, Lar/com/hjg/pngj/Deinterlacer;->b(I)[B

    move-result-object v2

    .line 166
    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v5, v2, v8

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    aget-byte v5, v2, v4

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-byte v5, v2, v8

    sub-int/2addr v0, v5

    aget-byte v5, v2, v4

    div-int/2addr v0, v5

    .line 167
    :goto_1
    iget-object v5, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v6, v2, v7

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lar/com/hjg/pngj/Deinterlacer;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->cols:I

    aget-byte v6, v2, v1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    aget-byte v6, v2, v7

    sub-int/2addr v5, v6

    aget-byte v2, v2, v1

    div-int v2, v5, v2

    .line 168
    :goto_2
    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 169
    iget v2, p0, Lar/com/hjg/pngj/Deinterlacer;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/Deinterlacer;->h:I

    .line 164
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_1

    :cond_2
    move v2, v1

    .line 167
    goto :goto_2

    .line 172
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->h:I

    return v0
.end method

.method public getdX()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    return v0
.end method

.method public getdY()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    return v0
.end method

.method public getoX()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    return v0
.end method

.method public getoY()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    return v0
.end method
