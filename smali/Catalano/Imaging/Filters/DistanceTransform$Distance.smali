.class public final enum LCatalano/Imaging/Filters/DistanceTransform$Distance;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/DistanceTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Distance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/DistanceTransform$Distance;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Chessboard:LCatalano/Imaging/Filters/DistanceTransform$Distance;

.field public static final enum Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

.field public static final enum Manhattan:LCatalano/Imaging/Filters/DistanceTransform$Distance;

.field public static final enum SquaredEuclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

.field private static final synthetic a:[LCatalano/Imaging/Filters/DistanceTransform$Distance;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    const-string v1, "Chessboard"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/DistanceTransform$Distance;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Chessboard:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 50
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    const-string v1, "Euclidean"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/DistanceTransform$Distance;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 55
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    const-string v1, "Manhattan"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/DistanceTransform$Distance;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Manhattan:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 60
    new-instance v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    const-string v1, "SquaredEuclidean"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Filters/DistanceTransform$Distance;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->SquaredEuclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Imaging/Filters/DistanceTransform$Distance;

    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Chessboard:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Manhattan:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Filters/DistanceTransform$Distance;->SquaredEuclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->a:[LCatalano/Imaging/Filters/DistanceTransform$Distance;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/DistanceTransform$Distance;
    .locals 1

    .prologue
    .line 41
    const-class v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/DistanceTransform$Distance;
    .locals 1

    .prologue
    .line 41
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->a:[LCatalano/Imaging/Filters/DistanceTransform$Distance;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/DistanceTransform$Distance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/DistanceTransform$Distance;

    return-object v0
.end method
