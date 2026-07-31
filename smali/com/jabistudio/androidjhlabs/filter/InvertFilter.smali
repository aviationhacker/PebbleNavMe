.class public Lcom/jabistudio/androidjhlabs/filter/InvertFilter;
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

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/InvertFilter;->canFilterIndexColorModel:Z

    .line 26
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 3

    .prologue
    .line 29
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 30
    xor-int/lit8 v1, p3, -0x1

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Colors/Invert"

    return-object v0
.end method
