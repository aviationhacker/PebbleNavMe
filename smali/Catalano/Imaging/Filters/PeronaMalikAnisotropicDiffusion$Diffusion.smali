.class public final enum LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Diffusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HighContrastEdges:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

.field public static final enum WideRegions:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

.field private static final synthetic a:[LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    const-string v1, "HighContrastEdges"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->HighContrastEdges:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    .line 54
    new-instance v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    const-string v1, "WideRegions"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->WideRegions:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    sget-object v1, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->HighContrastEdges:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->WideRegions:LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->a:[LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;
    .locals 1

    .prologue
    .line 45
    const-class v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;
    .locals 1

    .prologue
    .line 45
    sget-object v0, LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->a:[LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/PeronaMalikAnisotropicDiffusion$Diffusion;

    return-object v0
.end method
