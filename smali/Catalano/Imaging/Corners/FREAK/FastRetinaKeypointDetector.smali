.class public LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;
    }
.end annotation


# instance fields
.field public Detector:LCatalano/Imaging/Corners/ICornersDetector;

.field public FDetector:LCatalano/Imaging/Corners/ICornersFeatureDetector;

.field private a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

.field private b:F

.field private c:I

.field private d:LCatalano/Imaging/Tools/IntegralImage;

.field private e:LCatalano/Imaging/FastBitmap;

.field private f:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

.field private g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 68
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->b:F

    .line 69
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->c:I

    .line 104
    new-instance v0, LCatalano/Imaging/Corners/SusanCornersDetector;

    invoke-direct {v0}, LCatalano/Imaging/Corners/SusanCornersDetector;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->Detector:LCatalano/Imaging/Corners/ICornersDetector;

    .line 105
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/ICornersDetector;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 68
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->b:F

    .line 69
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->c:I

    .line 96
    iput-object p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->Detector:LCatalano/Imaging/Corners/ICornersDetector;

    .line 97
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Corners/ICornersFeatureDetector;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 68
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->b:F

    .line 69
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->c:I

    .line 100
    iput-object p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->FDetector:LCatalano/Imaging/Corners/ICornersFeatureDetector;

    .line 101
    return-void
.end method


# virtual methods
.method public GetDescriptor()LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->f:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    if-nez v0, :cond_2

    .line 85
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->f:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    iget v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->c:I

    iget v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->b:F

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;-><init>(IF)V

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->f:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    .line 88
    :cond_1
    new-instance v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    iget-object v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->d:LCatalano/Imaging/Tools/IntegralImage;

    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->f:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;

    invoke-direct {v0, v1, v2, v3}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;-><init>(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/Tools/IntegralImage;LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointPattern;)V

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    .line 89
    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    sget-object v2, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Extended:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->setExtended(Z)V

    .line 92
    :cond_2
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    return-object v0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    .line 118
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->Detector:LCatalano/Imaging/Corners/ICornersDetector;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->Detector:LCatalano/Imaging/Corners/ICornersDetector;

    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    invoke-interface {v1, v3}, LCatalano/Imaging/Corners/ICornersDetector;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 122
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 123
    new-instance v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    int-to-double v6, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    int-to-double v8, v0

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;-><init>(DD)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 113
    :cond_0
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    .line 114
    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->toGrayscale()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->FDetector:LCatalano/Imaging/Corners/ICornersFeatureDetector;

    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    invoke-interface {v1, v3}, LCatalano/Imaging/Corners/ICornersFeatureDetector;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 128
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 129
    new-instance v4, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v0, v0, LCatalano/Imaging/Corners/FeaturePoint;->x:I

    int-to-double v6, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FeaturePoint;

    iget v0, v0, LCatalano/Imaging/Corners/FeaturePoint;->y:I

    int-to-double v8, v0

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;-><init>(DD)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 133
    :cond_2
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->e:LCatalano/Imaging/FastBitmap;

    invoke-static {v0}, LCatalano/Imaging/Tools/IntegralImage;->FromFastBitmap(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/IntegralImage;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->d:LCatalano/Imaging/Tools/IntegralImage;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    .line 137
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->a:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    sget-object v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->None:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    if-eq v0, v1, :cond_3

    .line 138
    invoke-virtual {p0}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->GetDescriptor()LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    .line 139
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;->g:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;

    invoke-virtual {v0, v2}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDescriptor;->Compute(Ljava/util/List;)V

    .line 141
    :cond_3
    return-object v2
.end method
