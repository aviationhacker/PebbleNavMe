.class public Lar/com/hjg/pngj/ImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_COLS_ROW:I = 0x1000000


# instance fields
.field private a:J

.field public final alpha:Z

.field private b:J

.field public final bitDepth:I

.field public final bitspPixel:I

.field public final bytesPerRow:I

.field public final bytesPixel:I

.field public final channels:I

.field public final cols:I

.field public final greyscale:Z

.field public final indexed:Z

.field public final packed:Z

.field public final rows:I

.field public final samplesPerRow:I

.field public final samplesPerRowPacked:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 99
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageInfo;-><init>(IIIZZZ)V

    .line 100
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/high16 v3, 0x1000000

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide v4, p0, Lar/com/hjg/pngj/ImageInfo;->a:J

    .line 93
    iput-wide v4, p0, Lar/com/hjg/pngj/ImageInfo;->b:J

    .line 114
    iput p1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    .line 115
    iput p2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    .line 116
    iput-boolean p4, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    .line 117
    iput-boolean p6, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    .line 118
    iput-boolean p5, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    .line 119
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    .line 120
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "palette and greyscale are mutually exclusive"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-nez p5, :cond_1

    if-eqz p6, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    .line 123
    iput p3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 124
    const/16 v0, 0x8

    if-ge p3, v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    .line 125
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    mul-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    .line 126
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    .line 127
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    .line 128
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    mul-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    .line 129
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    :goto_2
    iput v0, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    .line 131
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    sparse-switch v0, :sswitch_data_0

    .line 145
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 121
    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    :cond_6
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    goto :goto_2

    .line 135
    :sswitch_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_7

    .line 136
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "only indexed or grayscale can have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :sswitch_1
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_7

    .line 142
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexed can\'t have bitdepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_7
    :sswitch_2
    if-lt p1, v1, :cond_8

    if-le p1, v3, :cond_9

    .line 148
    :cond_8
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_9
    if-lt p2, v1, :cond_a

    if-le p2, v3, :cond_b

    .line 150
    :cond_a
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_b
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-ge v0, v1, :cond_c

    .line 152
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "invalid image parameters (overflow?)"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    return-void

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    if-ne p0, p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 211
    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 213
    goto :goto_0

    .line 214
    :cond_3
    check-cast p1, Lar/com/hjg/pngj/ImageInfo;

    .line 215
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 216
    goto :goto_0

    .line 217
    :cond_4
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 218
    goto :goto_0

    .line 219
    :cond_5
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_6
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_7
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_8
    iget-boolean v2, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    iget-boolean v3, p1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 226
    goto :goto_0

    .line 227
    :cond_9
    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iget v3, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public getTotalPixels()J
    .locals 4

    .prologue
    .line 156
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 157
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->a:J

    .line 158
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->a:J

    return-wide v0
.end method

.method public getTotalRawBytes()J
    .locals 4

    .prologue
    .line 165
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 166
    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->b:J

    .line 167
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/ImageInfo;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 194
    .line 196
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    add-int/2addr v0, v3

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    add-int/2addr v0, v3

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    add-int/2addr v0, v3

    .line 200
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/2addr v0, v1

    .line 203
    return v0

    :cond_0
    move v0, v2

    .line 196
    goto :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_1

    :cond_2
    move v1, v2

    .line 201
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBrief()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    const-string v0, "a"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_2

    const-string v0, "p"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_3

    const-string v0, "g"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method public toStringDetail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageInfo [cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitspPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerRowP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/ImageInfo;->samplesPerRowPacked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", greyscale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lar/com/hjg/pngj/ImageInfo;->packed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
