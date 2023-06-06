.class public final enum LCatalano/Imaging/FastBitmap$CoordinateSystem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/FastBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoordinateSystem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/FastBitmap$CoordinateSystem;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cartesian:LCatalano/Imaging/FastBitmap$CoordinateSystem;

.field public static final enum Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

.field private static final synthetic a:[LCatalano/Imaging/FastBitmap$CoordinateSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;

    const-string v1, "Cartesian"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/FastBitmap$CoordinateSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Cartesian:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    .line 53
    new-instance v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;

    const-string v1, "Matrix"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/FastBitmap$CoordinateSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/FastBitmap$CoordinateSystem;

    sget-object v1, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Cartesian:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->a:[LCatalano/Imaging/FastBitmap$CoordinateSystem;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/FastBitmap$CoordinateSystem;
    .locals 1

    .prologue
    .line 44
    const-class v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/FastBitmap$CoordinateSystem;
    .locals 1

    .prologue
    .line 44
    sget-object v0, LCatalano/Imaging/FastBitmap$CoordinateSystem;->a:[LCatalano/Imaging/FastBitmap$CoordinateSystem;

    invoke-virtual {v0}, [LCatalano/Imaging/FastBitmap$CoordinateSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/FastBitmap$CoordinateSystem;

    return-object v0
.end method
