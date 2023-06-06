.class public final enum LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/Artistic/SpecularBloom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdaptiveThreshold"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Otsu:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

.field public static final enum Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

.field public static final enum Sis:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

.field private static final synthetic a:[LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    const-string v1, "Otsu"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Otsu:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    new-instance v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    const-string v1, "Rosin"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    new-instance v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    const-string v1, "Sis"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Sis:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    const/4 v0, 0x3

    new-array v0, v0, [LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    sget-object v1, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Otsu:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Rosin:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->Sis:LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    aput-object v1, v0, v4

    sput-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->a:[LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;
    .locals 1

    .prologue
    .line 38
    const-class v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;
    .locals 1

    .prologue
    .line 38
    sget-object v0, LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->a:[LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/Artistic/SpecularBloom$AdaptiveThreshold;

    return-object v0
.end method
