.class public LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->a:Z

    .line 66
    return-void
.end method

.method public static Encode(LCatalano/Imaging/Tools/ImageHistogram;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-static {p0, v0}, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->Encode(LCatalano/Imaging/Tools/ImageHistogram;Z)LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    return-object v0
.end method

.method public static Encode(LCatalano/Imaging/Tools/ImageHistogram;Z)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 7

    .prologue
    const/16 v6, 0x3a

    const/4 v0, 0x0

    .line 96
    const/16 v1, 0x3b

    new-array v2, v1, [I

    .line 97
    invoke-virtual {p0}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v4

    move v3, v0

    move v1, v0

    .line 101
    :goto_0
    const/16 v5, 0x100

    if-ge v3, v5, :cond_1

    .line 102
    invoke-static {v3}, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    aget v5, v4, v3

    aput v5, v2, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 101
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    aget v5, v4, v3

    add-int/2addr v0, v5

    goto :goto_1

    .line 111
    :cond_1
    aput v0, v2, v6

    .line 113
    if-nez p1, :cond_2

    .line 114
    invoke-static {v2, v6}, LCatalano/Math/Matrix;->RemoveColumn([II)[I

    move-result-object v0

    .line 117
    :goto_2
    new-instance v1, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v1, v0}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    .line 122
    invoke-static {p0}, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->b(I)I

    move-result v0

    .line 123
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 128
    const-string v1, "%8s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    const/16 v4, 0x30

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 130
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 131
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_2
    return v1
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uniform LBP only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    new-instance v0, LCatalano/Imaging/Texture/BinaryPattern/LocalBinaryPattern;

    invoke-direct {v0}, LCatalano/Imaging/Texture/BinaryPattern/LocalBinaryPattern;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, LCatalano/Imaging/Texture/BinaryPattern/LocalBinaryPattern;->ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    iget-boolean v1, p0, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->a:Z

    invoke-static {v0, v1}, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->Encode(LCatalano/Imaging/Tools/ImageHistogram;Z)LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    return-object v0
.end method

.method public isNonUniform()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->a:Z

    return v0
.end method

.method public setNonUniform(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, LCatalano/Imaging/Texture/BinaryPattern/UniformLocalBinaryPattern;->a:Z

    .line 51
    return-void
.end method
