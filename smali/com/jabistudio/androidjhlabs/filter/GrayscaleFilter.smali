.class public Lcom/jabistudio/androidjhlabs/filter/GrayscaleFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GrayscaleFilter;->canFilterIndexColorModel:Z

    .line 26
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 4

    .prologue
    .line 29
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 30
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 31
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 32
    and-int/lit16 v3, p3, 0xff

    .line 34
    mul-int/lit8 v1, v1, 0x4d

    mul-int/lit16 v2, v2, 0x97

    add-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x1c

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    .line 35
    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "Colors/Grayscale"

    return-object v0
.end method
