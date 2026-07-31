.class public Lcom/jabistudio/androidjhlabs/filter/BlurFilter;
.super Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;
.source "SourceFile"


# static fields
.field protected static blurMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/BlurFilter;->blurMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3d924925
        0x3e124925
        0x3d924925
        0x3e124925
        0x3e124925
        0x3e124925
        0x3d924925
        0x3e124925
        0x3d924925
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/BlurFilter;->blurMatrix:[F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>([F)V

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Blur/Simple Blur"

    return-object v0
.end method
