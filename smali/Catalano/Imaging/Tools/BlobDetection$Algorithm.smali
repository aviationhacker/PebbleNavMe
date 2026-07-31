.class public final enum LCatalano/Imaging/Tools/BlobDetection$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Tools/BlobDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Tools/BlobDetection$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EightWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

.field public static final enum FourWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Tools/BlobDetection$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    const-string v1, "FourWay"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/BlobDetection$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->FourWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    new-instance v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    const-string v1, "EightWay"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Tools/BlobDetection$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->EightWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    sget-object v1, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->FourWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->EightWay:LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->a:[LCatalano/Imaging/Tools/BlobDetection$Algorithm;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Tools/BlobDetection$Algorithm;
    .locals 1

    .prologue
    .line 38
    const-class v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Tools/BlobDetection$Algorithm;
    .locals 1

    .prologue
    .line 38
    sget-object v0, LCatalano/Imaging/Tools/BlobDetection$Algorithm;->a:[LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Tools/BlobDetection$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Tools/BlobDetection$Algorithm;

    return-object v0
.end method
