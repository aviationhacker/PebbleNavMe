.class public final enum LCatalano/Math/Transforms/FourierTransform$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Math/Transforms/FourierTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Math/Transforms/FourierTransform$Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

.field public static final enum Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

.field private static final synthetic a:[LCatalano/Math/Transforms/FourierTransform$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, LCatalano/Math/Transforms/FourierTransform$Direction;

    const-string v1, "Forward"

    invoke-direct {v0, v1, v2}, LCatalano/Math/Transforms/FourierTransform$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    .line 71
    new-instance v0, LCatalano/Math/Transforms/FourierTransform$Direction;

    const-string v1, "Backward"

    invoke-direct {v0, v1, v3}, LCatalano/Math/Transforms/FourierTransform$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Math/Transforms/FourierTransform$Direction;

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->a:[LCatalano/Math/Transforms/FourierTransform$Direction;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Math/Transforms/FourierTransform$Direction;
    .locals 1

    .prologue
    .line 62
    const-class v0, LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Math/Transforms/FourierTransform$Direction;

    return-object v0
.end method

.method public static values()[LCatalano/Math/Transforms/FourierTransform$Direction;
    .locals 1

    .prologue
    .line 62
    sget-object v0, LCatalano/Math/Transforms/FourierTransform$Direction;->a:[LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-virtual {v0}, [LCatalano/Math/Transforms/FourierTransform$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Math/Transforms/FourierTransform$Direction;

    return-object v0
.end method
