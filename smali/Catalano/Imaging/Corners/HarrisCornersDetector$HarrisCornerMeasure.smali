.class public final enum LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Corners/HarrisCornersDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HarrisCornerMeasure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

.field public static final enum Noble:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

.field private static final synthetic a:[LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    const-string v1, "Harris"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    new-instance v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    const-string v1, "Noble"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Noble:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Harris:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->Noble:LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->a:[LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;
    .locals 1

    .prologue
    .line 39
    const-class v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;
    .locals 1

    .prologue
    .line 39
    sget-object v0, LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->a:[LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    invoke-virtual {v0}, [LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Corners/HarrisCornersDetector$HarrisCornerMeasure;

    return-object v0
.end method
