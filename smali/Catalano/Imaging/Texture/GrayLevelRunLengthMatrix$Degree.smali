.class public final enum LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Degree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Degree_0:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

.field public static final enum Degree_135:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

.field public static final enum Degree_45:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

.field public static final enum Degree_90:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

.field private static final synthetic a:[LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    const-string v1, "Degree_0"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_0:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 46
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    const-string v1, "Degree_45"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_45:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 51
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    const-string v1, "Degree_90"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_90:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 56
    new-instance v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    const-string v1, "Degree_135"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_135:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_0:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_45:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_90:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->Degree_135:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->a:[LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;
    .locals 1

    .prologue
    .line 36
    const-class v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->a:[LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    invoke-virtual {v0}, [LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    return-object v0
.end method
