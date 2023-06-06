.class public final enum LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Corners/FastCornersDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_12:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

.field public static final enum FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    const-string v1, "FAST_9"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    new-instance v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    const-string v1, "FAST_12"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_12:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    sget-object v1, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_9:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->FAST_12:LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->a:[LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;
    .locals 1

    .prologue
    .line 34
    const-class v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;
    .locals 1

    .prologue
    .line 34
    sget-object v0, LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->a:[LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Corners/FastCornersDetector$Algorithm;

    return-object v0
.end method
