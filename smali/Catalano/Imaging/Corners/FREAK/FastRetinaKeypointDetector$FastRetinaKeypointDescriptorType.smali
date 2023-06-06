.class public final enum LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FastRetinaKeypointDescriptorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Extended:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

.field public static final enum None:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

.field public static final enum Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

.field private static final synthetic a:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->None:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 58
    new-instance v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 64
    new-instance v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    const-string v1, "Extended"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Extended:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    sget-object v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->None:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Standard:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->Extended:LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    aput-object v1, v0, v4

    sput-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->a:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;
    .locals 1

    .prologue
    .line 46
    const-class v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->a:[LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    invoke-virtual {v0}, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Corners/FREAK/FastRetinaKeypointDetector$FastRetinaKeypointDescriptorType;

    return-object v0
.end method
