.class public final enum LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Degree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Degree_0:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

.field public static final enum Degree_135:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

.field public static final enum Degree_45:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

.field public static final enum Degree_90:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

.field private static final synthetic a:[LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    const-string v1, "Degree_0"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_0:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 47
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    const-string v1, "Degree_45"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_45:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 52
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    const-string v1, "Degree_90"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_90:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 57
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    const-string v1, "Degree_135"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_135:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_0:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_45:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_90:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->Degree_135:LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->a:[LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;
    .locals 1

    .prologue
    .line 37
    const-class v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;
    .locals 1

    .prologue
    .line 37
    sget-object v0, LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->a:[LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    invoke-virtual {v0}, [LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Texture/GrayLevelCooccurrenceMatrix$Degree;

    return-object v0
.end method
