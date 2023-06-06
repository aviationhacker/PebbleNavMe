.class public Lcom/jabistudio/androidjhlabs/filter/GrayFilter;
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

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GrayFilter;->canFilterIndexColorModel:Z

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

    .line 33
    add-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    .line 34
    add-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x2

    .line 35
    add-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x2

    .line 36
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "Colors/Gray Out"

    return-object v0
.end method
