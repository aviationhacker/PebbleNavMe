.class public LCatalano/Imaging/Filters/ReplaceColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:LCatalano/Core/IntRange;

.field private e:LCatalano/Core/IntRange;

.field private f:LCatalano/Core/IntRange;

.field private g:Z


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, LCatalano/Imaging/Filters/ReplaceColor;->a:I

    .line 44
    iput p2, p0, LCatalano/Imaging/Filters/ReplaceColor;->b:I

    .line 45
    iput p3, p0, LCatalano/Imaging/Filters/ReplaceColor;->c:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/ReplaceColor;->g:Z

    .line 47
    return-void
.end method

.method public constructor <init>(LCatalano/Core/IntRange;LCatalano/Core/IntRange;LCatalano/Core/IntRange;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, LCatalano/Imaging/Filters/ReplaceColor;->d:LCatalano/Core/IntRange;

    .line 57
    iput-object p2, p0, LCatalano/Imaging/Filters/ReplaceColor;->e:LCatalano/Core/IntRange;

    .line 58
    iput-object p3, p0, LCatalano/Imaging/Filters/ReplaceColor;->f:LCatalano/Core/IntRange;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/ReplaceColor;->g:Z

    .line 60
    return-void
.end method


# virtual methods
.method public ApplyInPlace(LCatalano/Imaging/FastBitmap;III)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 73
    iget-boolean v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->g:Z

    if-nez v2, :cond_1

    .line 74
    :goto_0
    if-ge v0, v1, :cond_3

    .line 75
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    .line 76
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 77
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 79
    iget v5, p0, LCatalano/Imaging/Filters/ReplaceColor;->a:I

    if-ne v2, v5, :cond_0

    iget v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->b:I

    if-ne v3, v2, :cond_0

    iget v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->c:I

    if-ne v4, v2, :cond_0

    .line 80
    invoke-virtual {p1, v0, p2}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 81
    invoke-virtual {p1, v0, p3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 82
    invoke-virtual {p1, v0, p4}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    .line 88
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    .line 89
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 90
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 92
    iget-object v5, p0, LCatalano/Imaging/Filters/ReplaceColor;->d:LCatalano/Core/IntRange;

    .line 93
    invoke-virtual {v5}, LCatalano/Core/IntRange;->getMin()I

    move-result v5

    if-lt v2, v5, :cond_2

    iget-object v5, p0, LCatalano/Imaging/Filters/ReplaceColor;->d:LCatalano/Core/IntRange;

    invoke-virtual {v5}, LCatalano/Core/IntRange;->getMax()I

    move-result v5

    if-gt v2, v5, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->e:LCatalano/Core/IntRange;

    .line 94
    invoke-virtual {v2}, LCatalano/Core/IntRange;->getMin()I

    move-result v2

    if-lt v3, v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->e:LCatalano/Core/IntRange;

    invoke-virtual {v2}, LCatalano/Core/IntRange;->getMax()I

    move-result v2

    if-gt v3, v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->f:LCatalano/Core/IntRange;

    .line 95
    invoke-virtual {v2}, LCatalano/Core/IntRange;->getMin()I

    move-result v2

    if-lt v4, v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/ReplaceColor;->f:LCatalano/Core/IntRange;

    invoke-virtual {v2}, LCatalano/Core/IntRange;->getMax()I

    move-result v2

    if-gt v4, v2, :cond_2

    .line 97
    invoke-virtual {p1, v0, p2}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 98
    invoke-virtual {p1, v0, p3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 99
    invoke-virtual {p1, v0, p4}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 87
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    return-void
.end method
