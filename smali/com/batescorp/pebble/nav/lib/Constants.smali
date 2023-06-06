.class public Lcom/batescorp/pebble/nav/lib/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MPS_TO_KPH:Ljava/lang/Float;

.field public static final MPS_TO_MPH:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const v0, 0x400f2a06

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/lib/Constants;->MPS_TO_MPH:Ljava/lang/Float;

    .line 6
    const v0, 0x40666666    # 3.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/lib/Constants;->MPS_TO_KPH:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v0, ""

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.0f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKPH(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/batescorp/pebble/nav/lib/Constants;->MPS_TO_KPH:Ljava/lang/Float;

    invoke-static {p0, v0}, Lcom/batescorp/pebble/nav/lib/Constants;->a(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMPH(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/batescorp/pebble/nav/lib/Constants;->MPS_TO_MPH:Ljava/lang/Float;

    invoke-static {p0, v0}, Lcom/batescorp/pebble/nav/lib/Constants;->a(Ljava/lang/Float;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
