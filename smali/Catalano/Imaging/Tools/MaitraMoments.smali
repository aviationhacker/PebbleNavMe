.class public LCatalano/Imaging/Tools/MaitraMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[D
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [D

    .line 49
    new-instance v1, LCatalano/Imaging/Tools/HuMoments;

    invoke-direct {v1}, LCatalano/Imaging/Tools/HuMoments;-><init>()V

    .line 50
    invoke-virtual {v1, p1}, LCatalano/Imaging/Tools/HuMoments;->Compute(LCatalano/Imaging/FastBitmap;)[D

    move-result-object v1

    .line 52
    invoke-static {p1, v8, v8}, LCatalano/Imaging/Tools/ImageMoments;->getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 54
    aget-wide v4, v1, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aget-wide v6, v1, v8

    div-double/2addr v4, v6

    aput-wide v4, v0, v8

    .line 55
    aget-wide v4, v1, v11

    mul-double/2addr v2, v4

    aget-wide v4, v1, v10

    aget-wide v6, v1, v8

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 56
    aget-wide v2, v1, v9

    aget-wide v4, v1, v11

    div-double/2addr v2, v4

    aput-wide v2, v0, v11

    .line 57
    aget-wide v2, v1, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aget-wide v4, v1, v9

    div-double/2addr v2, v4

    aput-wide v2, v0, v9

    .line 58
    const/4 v2, 0x5

    aget-wide v2, v1, v2

    aget-wide v4, v1, v9

    aget-wide v6, v1, v8

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    aput-wide v2, v0, v12

    .line 59
    const/4 v2, 0x5

    const/4 v3, 0x6

    aget-wide v4, v1, v3

    aget-wide v6, v1, v12

    div-double/2addr v4, v6

    aput-wide v4, v0, v2

    .line 61
    return-object v0
.end method
