.class public final enum LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum B:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

.field public static final enum G:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

.field public static final enum R:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

.field private static final synthetic a:[LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    const-string v1, "R"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->R:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    .line 53
    new-instance v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    const-string v1, "G"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->G:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    .line 57
    new-instance v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    const-string v1, "B"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->B:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    sget-object v1, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->R:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->G:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->B:LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    aput-object v1, v0, v4

    sput-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->a:[LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;
    .locals 1

    .prologue
    .line 44
    const-class v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;
    .locals 1

    .prologue
    .line 44
    sget-object v0, LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->a:[LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/ExtractNormalizedRGBChannel$Channel;

    return-object v0
.end method
