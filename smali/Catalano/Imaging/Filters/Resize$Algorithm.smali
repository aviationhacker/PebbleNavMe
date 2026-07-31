.class public final enum LCatalano/Imaging/Filters/Resize$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/Resize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/Resize$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BICUBIC:LCatalano/Imaging/Filters/Resize$Algorithm;

.field public static final enum BILINEAR:LCatalano/Imaging/Filters/Resize$Algorithm;

.field public static final enum NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Resize$Algorithm;

.field private static final synthetic a:[LCatalano/Imaging/Filters/Resize$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, LCatalano/Imaging/Filters/Resize$Algorithm;

    const-string v1, "BILINEAR"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Resize$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->BILINEAR:LCatalano/Imaging/Filters/Resize$Algorithm;

    .line 45
    new-instance v0, LCatalano/Imaging/Filters/Resize$Algorithm;

    const-string v1, "BICUBIC"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Resize$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->BICUBIC:LCatalano/Imaging/Filters/Resize$Algorithm;

    .line 49
    new-instance v0, LCatalano/Imaging/Filters/Resize$Algorithm;

    const-string v1, "NEAREST_NEIGHBOR"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/Resize$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Resize$Algorithm;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [LCatalano/Imaging/Filters/Resize$Algorithm;

    sget-object v1, LCatalano/Imaging/Filters/Resize$Algorithm;->BILINEAR:LCatalano/Imaging/Filters/Resize$Algorithm;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/Resize$Algorithm;->BICUBIC:LCatalano/Imaging/Filters/Resize$Algorithm;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/Resize$Algorithm;->NEAREST_NEIGHBOR:LCatalano/Imaging/Filters/Resize$Algorithm;

    aput-object v1, v0, v4

    sput-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->a:[LCatalano/Imaging/Filters/Resize$Algorithm;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/Resize$Algorithm;
    .locals 1

    .prologue
    .line 37
    const-class v0, LCatalano/Imaging/Filters/Resize$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/Resize$Algorithm;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/Resize$Algorithm;
    .locals 1

    .prologue
    .line 37
    sget-object v0, LCatalano/Imaging/Filters/Resize$Algorithm;->a:[LCatalano/Imaging/Filters/Resize$Algorithm;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/Resize$Algorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/Resize$Algorithm;

    return-object v0
.end method
