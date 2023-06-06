.class public final enum LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Tools/NearestNeighborMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Horizontal:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

.field public static final enum Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

.field private static final synthetic a:[LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    const-string v1, "Horizontal"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Horizontal:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    new-instance v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    const-string v1, "Vertical"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    sget-object v1, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Horizontal:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->Vertical:LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->a:[LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;
    .locals 1

    .prologue
    .line 36
    const-class v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->a:[LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    invoke-virtual {v0}, [LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Tools/NearestNeighborMatrix$Direction;

    return-object v0
.end method
