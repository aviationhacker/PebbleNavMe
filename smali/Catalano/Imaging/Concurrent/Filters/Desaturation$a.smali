.class LCatalano/Imaging/Concurrent/Filters/Desaturation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Desaturation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LCatalano/Imaging/Concurrent/Filters/Desaturation;

.field private b:LCatalano/Imaging/Concurrent/Share;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Concurrent/Filters/Desaturation;LCatalano/Imaging/Concurrent/Share;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->a:LCatalano/Imaging/Concurrent/Filters/Desaturation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    .line 106
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 111
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v1, v0, LCatalano/Imaging/Concurrent/Share;->startX:I

    :goto_0
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget v0, v0, LCatalano/Imaging/Concurrent/Share;->endHeight:I

    if-ge v1, v0, :cond_1

    .line 112
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 113
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    int-to-double v4, v0

    .line 114
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    int-to-double v6, v0

    .line 115
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    int-to-double v8, v0

    .line 117
    const-wide v10, 0x3fcb333333333333L    # 0.2125

    mul-double/2addr v10, v4

    const-wide v12, 0x3fe6e48e8a71de6aL    # 0.7154

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27525460aa64cL    # 0.0721

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    .line 119
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->a:LCatalano/Imaging/Concurrent/Filters/Desaturation;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a(LCatalano/Imaging/Concurrent/Filters/Desaturation;)D

    move-result-wide v12

    sub-double/2addr v4, v10

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    .line 120
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->a:LCatalano/Imaging/Concurrent/Filters/Desaturation;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a(LCatalano/Imaging/Concurrent/Filters/Desaturation;)D

    move-result-wide v12

    sub-double/2addr v6, v10

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    .line 121
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->a:LCatalano/Imaging/Concurrent/Filters/Desaturation;

    invoke-static {v0}, LCatalano/Imaging/Concurrent/Filters/Desaturation;->a(LCatalano/Imaging/Concurrent/Filters/Desaturation;)D

    move-result-wide v12

    sub-double/2addr v8, v10

    mul-double/2addr v8, v12

    add-double/2addr v8, v10

    .line 123
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/Desaturation$a;->b:LCatalano/Imaging/Concurrent/Share;

    iget-object v0, v0, LCatalano/Imaging/Concurrent/Share;->fastBitmap:LCatalano/Imaging/FastBitmap;

    double-to-int v3, v4

    double-to-int v4, v6

    double-to-int v5, v8

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method
