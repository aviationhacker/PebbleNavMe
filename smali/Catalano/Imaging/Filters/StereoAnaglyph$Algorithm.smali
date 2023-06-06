.class public final enum LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/StereoAnaglyph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

.field public static final enum GrayAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

.field public static final enum HalfColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

.field public static final enum OptimizedAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

.field public static final enum TrueAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    const-string v1, "TrueAnaglyph"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->TrueAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 60
    new-instance v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    const-string v1, "GrayAnaglyph"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->GrayAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 68
    new-instance v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    const-string v1, "ColorAnaglyph"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->ColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 76
    new-instance v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    const-string v1, "HalfColorAnaglyph"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->HalfColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 84
    new-instance v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    const-string v1, "OptimizedAnaglyph"

    invoke-direct {v0, v1, v6}, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->OptimizedAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->TrueAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->GrayAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->ColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->HalfColorAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    aput-object v1, v0, v5

    sget-object v1, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->OptimizedAnaglyph:LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    aput-object v1, v0, v6

    sput-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->a:[LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;
    .locals 1

    .prologue
    .line 43
    const-class v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;
    .locals 1

    .prologue
    .line 43
    sget-object v0, LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->a:[LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/StereoAnaglyph$Algorithm;

    return-object v0
.end method
