.class public Lcom/jabistudio/androidjhlabs/filter/SharpenFilter;
.super Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;
.source "SourceFile"


# static fields
.field private static a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/SharpenFilter;->a:[F

    return-void

    :array_0
    .array-data 4
        0x0
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        0x3fe66666    # 1.8f
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/SharpenFilter;->a:[F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>([F)V

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Blur/Sharpen"

    return-object v0
.end method
