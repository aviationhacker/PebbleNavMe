.class public final enum LCatalano/Math/Functions/Gabor$Config;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Math/Functions/Gabor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Math/Functions/Gabor$Config;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Imaginary:LCatalano/Math/Functions/Gabor$Config;

.field public static final enum Magnitude:LCatalano/Math/Functions/Gabor$Config;

.field public static final enum Real:LCatalano/Math/Functions/Gabor$Config;

.field public static final enum SquaredMagnitude:LCatalano/Math/Functions/Gabor$Config;

.field private static final synthetic a:[LCatalano/Math/Functions/Gabor$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, LCatalano/Math/Functions/Gabor$Config;

    const-string v1, "Real"

    invoke-direct {v0, v1, v2}, LCatalano/Math/Functions/Gabor$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Functions/Gabor$Config;->Real:LCatalano/Math/Functions/Gabor$Config;

    .line 46
    new-instance v0, LCatalano/Math/Functions/Gabor$Config;

    const-string v1, "Imaginary"

    invoke-direct {v0, v1, v3}, LCatalano/Math/Functions/Gabor$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    .line 50
    new-instance v0, LCatalano/Math/Functions/Gabor$Config;

    const-string v1, "Magnitude"

    invoke-direct {v0, v1, v4}, LCatalano/Math/Functions/Gabor$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Functions/Gabor$Config;->Magnitude:LCatalano/Math/Functions/Gabor$Config;

    .line 54
    new-instance v0, LCatalano/Math/Functions/Gabor$Config;

    const-string v1, "SquaredMagnitude"

    invoke-direct {v0, v1, v5}, LCatalano/Math/Functions/Gabor$Config;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Math/Functions/Gabor$Config;->SquaredMagnitude:LCatalano/Math/Functions/Gabor$Config;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Math/Functions/Gabor$Config;

    sget-object v1, LCatalano/Math/Functions/Gabor$Config;->Real:LCatalano/Math/Functions/Gabor$Config;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Math/Functions/Gabor$Config;->Magnitude:LCatalano/Math/Functions/Gabor$Config;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Math/Functions/Gabor$Config;->SquaredMagnitude:LCatalano/Math/Functions/Gabor$Config;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Math/Functions/Gabor$Config;->a:[LCatalano/Math/Functions/Gabor$Config;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Math/Functions/Gabor$Config;
    .locals 1

    .prologue
    .line 37
    const-class v0, LCatalano/Math/Functions/Gabor$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Math/Functions/Gabor$Config;

    return-object v0
.end method

.method public static values()[LCatalano/Math/Functions/Gabor$Config;
    .locals 1

    .prologue
    .line 37
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->a:[LCatalano/Math/Functions/Gabor$Config;

    invoke-virtual {v0}, [LCatalano/Math/Functions/Gabor$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Math/Functions/Gabor$Config;

    return-object v0
.end method
