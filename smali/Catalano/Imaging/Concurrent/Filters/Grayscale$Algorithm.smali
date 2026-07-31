.class public final enum LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Concurrent/Filters/Grayscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Average:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field public static final enum GeometricMean:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field public static final enum Lightness:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field public static final enum Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field public static final enum MaximumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field public static final enum MinimumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "Lightness"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Lightness:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 51
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "Average"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 56
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "GeometricMean"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->GeometricMean:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 61
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "Luminosity"

    invoke-direct {v0, v1, v6}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 66
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "MinimumDecomposition"

    invoke-direct {v0, v1, v7}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->MinimumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 71
    new-instance v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    const-string v1, "MaximumDecomposition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->MaximumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Lightness:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->GeometricMean:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v1, v0, v5

    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->Luminosity:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v1, v0, v6

    sget-object v1, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->MinimumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->MaximumDecomposition:LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    aput-object v2, v0, v1

    sput-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->a:[LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 41
    const-class v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 41
    sget-object v0, LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->a:[LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Concurrent/Filters/Grayscale$Algorithm;

    return-object v0
.end method
