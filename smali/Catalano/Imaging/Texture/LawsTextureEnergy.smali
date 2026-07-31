.class public LCatalano/Imaging/Texture/LawsTextureEnergy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Edges:[I

.field public static final Level:[I

.field public static final Ripples:[I

.field public static final Spots:[I

.field public static final Waves:[I


# instance fields
.field private a:[[I

.field private b:[I

.field private c:[I

.field private d:LCatalano/Imaging/FastBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, LCatalano/Imaging/Texture/LawsTextureEnergy;->Level:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, LCatalano/Imaging/Texture/LawsTextureEnergy;->Edges:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, LCatalano/Imaging/Texture/LawsTextureEnergy;->Spots:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, LCatalano/Imaging/Texture/LawsTextureEnergy;->Ripples:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, LCatalano/Imaging/Texture/LawsTextureEnergy;->Waves:[I

    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x6
        0x4
        0x1
    .end array-data

    .line 42
    :array_1
    .array-data 4
        -0x1
        -0x2
        0x0
        0x2
        0x1
    .end array-data

    .line 47
    :array_2
    .array-data 4
        -0x1
        0x0
        0x2
        0x0
        -0x1
    .end array-data

    .line 52
    :array_3
    .array-data 4
        0x1
        -0x4
        0x6
        -0x4
        0x1
    .end array-data

    .line 57
    :array_4
    .array-data 4
        -0x1
        0x2
        0x0
        -0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->b:[I

    .line 75
    iput-object p2, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->c:[I

    .line 76
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    .line 84
    return-void
.end method

.method private a([I[I)[[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 196
    array-length v0, p1

    array-length v2, p2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    move v0, v1

    .line 198
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 199
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 200
    iget-object v3, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    aget-object v3, v3, v0

    aget v4, p1, v0

    aget v5, p2, v2

    mul-int/2addr v4, v5

    aput v4, v3, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    return-object v0
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    .line 125
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->b:[I

    iget-object v1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->c:[I

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Texture/LawsTextureEnergy;->a([I[I)[[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    .line 126
    new-instance v0, LCatalano/Imaging/Filters/Convolution;

    iget-object v1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->a:[[I

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Convolution;-><init>([[I)V

    .line 127
    iget-object v1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0, v1}, LCatalano/Imaging/Filters/Convolution;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 129
    :cond_0
    return-void
.end method

.method public getTextureEnergyMap()J
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 146
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 148
    const-wide/16 v2, 0x0

    move v4, v1

    .line 149
    :goto_0
    if-ge v4, v6, :cond_1

    move v0, v1

    .line 150
    :goto_1
    if-ge v0, v5, :cond_0

    .line 151
    iget-object v7, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v4, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 155
    :cond_1
    return-wide v2
.end method

.method public getTextureEnergyMap(IIII)J
    .locals 6

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    .line 169
    :goto_0
    add-int v2, p1, p4

    if-ge p1, v2, :cond_1

    move-wide v2, v0

    move v0, p2

    .line 170
    :goto_1
    add-int v1, v0, p3

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-wide v0, v2

    goto :goto_0

    .line 175
    :cond_1
    return-wide v0
.end method

.method public getTextureEnergyMap(LCatalano/Core/IntPoint;II)J
    .locals 2

    .prologue
    .line 186
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p1, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p0, v0, v1, p2, p3}, LCatalano/Imaging/Texture/LawsTextureEnergy;->getTextureEnergyMap(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVector1()[I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->b:[I

    return-object v0
.end method

.method public getVector2()[I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->c:[I

    return-object v0
.end method

.method public setVector1([I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->b:[I

    .line 100
    return-void
.end method

.method public setVector2([I)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->c:[I

    .line 116
    return-void
.end method

.method public toFastBitmap()LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, LCatalano/Imaging/Texture/LawsTextureEnergy;->d:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method
