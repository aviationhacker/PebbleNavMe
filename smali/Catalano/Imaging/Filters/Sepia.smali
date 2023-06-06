.class public LCatalano/Imaging/Filters/Sepia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    .line 44
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v4

    .line 48
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_6

    .line 49
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 50
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    .line 51
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    .line 54
    const-wide v6, 0x3fd322d0e5604189L    # 0.299

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    int-to-double v0, v1

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v6, v0

    .line 59
    const-wide v8, 0x4049800000000000L    # 51.0

    .line 60
    const-wide/16 v10, 0x0

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v6

    const-wide v12, 0x3fee978d4fdf3b64L    # 0.956

    mul-double/2addr v12, v8

    add-double/2addr v0, v12

    const-wide v12, 0x3fe3df3b645a1cacL    # 0.621

    mul-double/2addr v12, v10

    add-double/2addr v0, v12

    double-to-int v2, v0

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v6

    const-wide v12, 0x3fd16872b020c49cL    # 0.272

    mul-double/2addr v12, v8

    sub-double/2addr v0, v12

    const-wide v12, 0x3fe4b4395810624eL    # 0.647

    mul-double/2addr v12, v10

    sub-double/2addr v0, v12

    double-to-int v1, v0

    .line 65
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v12

    const-wide v12, 0x3ff1ae147ae147aeL    # 1.105

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    const-wide v8, 0x3ffb3b645a1cac08L    # 1.702

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 68
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 69
    :cond_0
    const/16 v5, 0xff

    if-le v2, v5, :cond_1

    const/16 v2, 0xff

    .line 71
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 72
    :cond_2
    const/16 v5, 0xff

    if-le v1, v5, :cond_3

    const/16 v1, 0xff

    .line 74
    :cond_3
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 75
    :cond_4
    const/16 v5, 0xff

    if-le v0, v5, :cond_5

    const/16 v0, 0xff

    .line 78
    :cond_5
    invoke-virtual {p1, v3, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 48
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 80
    :cond_6
    return-void
.end method
