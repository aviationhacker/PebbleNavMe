.class public LCatalano/Imaging/Filters/BlobsFiltering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/BlobsFiltering$Filter;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, LCatalano/Imaging/Filters/BlobsFiltering$Filter;->Area:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    iput-object v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    .line 40
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    .line 41
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    .line 43
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    .line 44
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    .line 45
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    .line 46
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    .line 163
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, LCatalano/Imaging/Filters/BlobsFiltering$Filter;->Area:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    iput-object v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    .line 40
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    .line 41
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    .line 43
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    .line 44
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    .line 45
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    .line 46
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    .line 171
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    .line 172
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    .line 173
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, LCatalano/Imaging/Filters/BlobsFiltering$Filter;->Area:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    iput-object v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    .line 40
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    .line 41
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    .line 43
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    .line 44
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    .line 45
    iput v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    .line 46
    iput v2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    .line 183
    iput p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    .line 184
    iput p2, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    .line 185
    iput p3, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    .line 186
    iput p4, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    .line 187
    sget-object v0, LCatalano/Imaging/Filters/BlobsFiltering$Filter;->Size:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    iput-object v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    .line 188
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 193
    new-instance v0, LCatalano/Imaging/Tools/BlobDetection;

    invoke-direct {v0}, LCatalano/Imaging/Tools/BlobDetection;-><init>()V

    invoke-virtual {v0, p1}, LCatalano/Imaging/Tools/BlobDetection;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v3

    .line 195
    sget-object v0, LCatalano/Imaging/Filters/BlobsFiltering$1;->a:[I

    iget-object v1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    invoke-virtual {v1}, LCatalano/Imaging/Filters/BlobsFiltering$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 223
    :cond_0
    return-void

    :pswitch_0
    move v1, v2

    .line 198
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 199
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getArea()I

    move-result v0

    .line 200
    iget v4, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    if-le v0, v4, :cond_1

    iget v4, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    if-gt v0, v4, :cond_1

    .line 201
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 202
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p1, v5, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_1

    .line 198
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 210
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 211
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getWidth()I

    move-result v4

    .line 212
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getHeight()I

    move-result v0

    .line 213
    iget v5, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    if-le v4, v5, :cond_2

    iget v5, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    if-gt v4, v5, :cond_2

    .line 214
    iget v4, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    if-le v0, v4, :cond_2

    iget v4, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    if-gt v0, v4, :cond_2

    .line 215
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 216
    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p1, v5, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_3

    .line 210
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilter()LCatalano/Imaging/Filters/BlobsFiltering$Filter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    return-object v0
.end method

.method public getMaxArea()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    return v0
.end method

.method public getMinArea()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    return v0
.end method

.method public setFilter(LCatalano/Imaging/Filters/BlobsFiltering$Filter;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->a:LCatalano/Imaging/Filters/BlobsFiltering$Filter;

    .line 62
    return-void
.end method

.method public setMaxArea(I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->c:I

    .line 142
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->e:I

    .line 126
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->g:I

    .line 94
    return-void
.end method

.method public setMinArea(I)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/BlobsFiltering;->b:I

    .line 158
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->d:I

    .line 110
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, LCatalano/Imaging/Filters/BlobsFiltering;->f:I

    .line 78
    return-void
.end method
