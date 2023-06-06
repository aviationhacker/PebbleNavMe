.class public final enum LCatalano/Imaging/Filters/Mean$Arithmetic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/Mean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arithmetic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/Mean$Arithmetic;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ContraHarmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

.field public static final enum Geometry:LCatalano/Imaging/Filters/Mean$Arithmetic;

.field public static final enum Harmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

.field public static final enum Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

.field private static final synthetic a:[LCatalano/Imaging/Filters/Mean$Arithmetic;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    const-string v1, "Mean"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Mean$Arithmetic;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 46
    new-instance v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    const-string v1, "Harmonic"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Mean$Arithmetic;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->Harmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 51
    new-instance v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    const-string v1, "ContraHarmonic"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/Mean$Arithmetic;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->ContraHarmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 56
    new-instance v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    const-string v1, "Geometry"

    invoke-direct {v0, v1, v5}, LCatalano/Imaging/Filters/Mean$Arithmetic;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->Geometry:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [LCatalano/Imaging/Filters/Mean$Arithmetic;

    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->Harmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->ContraHarmonic:LCatalano/Imaging/Filters/Mean$Arithmetic;

    aput-object v1, v0, v4

    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->Geometry:LCatalano/Imaging/Filters/Mean$Arithmetic;

    aput-object v1, v0, v5

    sput-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->a:[LCatalano/Imaging/Filters/Mean$Arithmetic;

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

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 36
    const-class v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/Mean$Arithmetic;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->a:[LCatalano/Imaging/Filters/Mean$Arithmetic;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/Mean$Arithmetic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/Mean$Arithmetic;

    return-object v0
.end method
