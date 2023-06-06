.class public Lgg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lar/com/hjg/pngj/ImageInfo;

.field public final b:Lar/com/hjg/pngj/Deinterlacer;

.field public final c:Z

.field d:I

.field public e:I

.field f:I

.field public g:I

.field h:I

.field public i:I

.field public j:I

.field k:I

.field l:I

.field public m:I

.field n:I

.field o:[B

.field public p:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgg;->a:Lar/com/hjg/pngj/ImageInfo;

    .line 23
    iput-object p2, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    .line 24
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgg;->c:Z

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    iput p1, p0, Lgg;->h:I

    .line 29
    iget-boolean v0, p0, Lgg;->c:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->d()I

    move-result v0

    iput v0, p0, Lgg;->n:I

    .line 31
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    iget v0, v0, Lar/com/hjg/pngj/Deinterlacer;->c:I

    iput v0, p0, Lgg;->e:I

    .line 32
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    iget v0, v0, Lar/com/hjg/pngj/Deinterlacer;->b:I

    iput v0, p0, Lgg;->d:I

    .line 33
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    iget v0, v0, Lar/com/hjg/pngj/Deinterlacer;->e:I

    iput v0, p0, Lgg;->g:I

    .line 34
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    iget v0, v0, Lar/com/hjg/pngj/Deinterlacer;->d:I

    iput v0, p0, Lgg;->f:I

    .line 35
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->c()I

    move-result v0

    iput v0, p0, Lgg;->i:I

    .line 36
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->b()I

    move-result v0

    iput v0, p0, Lgg;->j:I

    .line 37
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->e()I

    move-result v0

    iput v0, p0, Lgg;->k:I

    .line 38
    iget-object v0, p0, Lgg;->b:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->f()I

    move-result v0

    iput v0, p0, Lgg;->l:I

    .line 39
    iget-object v0, p0, Lgg;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitspPixel:I

    iget v1, p0, Lgg;->l:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgg;->m:I

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    iput v1, p0, Lgg;->n:I

    .line 42
    iput v1, p0, Lgg;->d:I

    iput v1, p0, Lgg;->e:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lgg;->f:I

    iput v0, p0, Lgg;->g:I

    .line 44
    iput p1, p0, Lgg;->j:I

    iput p1, p0, Lgg;->i:I

    .line 45
    iget-object v0, p0, Lgg;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iput v0, p0, Lgg;->k:I

    .line 46
    iget-object v0, p0, Lgg;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    iput v0, p0, Lgg;->l:I

    .line 47
    iget-object v0, p0, Lgg;->a:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iput v0, p0, Lgg;->m:I

    goto :goto_0
.end method

.method public a([BI)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lgg;->o:[B

    .line 53
    iput p2, p0, Lgg;->p:I

    .line 54
    return-void
.end method
