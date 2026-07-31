.class public final enum LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Tools/ColorConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YCbCrColorSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

.field public static final enum ITU_BT_709_HDTV:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

.field private static final synthetic a:[LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    const-string v1, "ITU_BT_601"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    new-instance v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    const-string v1, "ITU_BT_709_HDTV"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_709_HDTV:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    sget-object v1, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_709_HDTV:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->a:[LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;
    .locals 1

    .prologue
    .line 49
    const-class v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;
    .locals 1

    .prologue
    .line 49
    sget-object v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->a:[LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-virtual {v0}, [LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    return-object v0
.end method
