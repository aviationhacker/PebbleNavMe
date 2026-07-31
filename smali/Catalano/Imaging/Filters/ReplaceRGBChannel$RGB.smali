.class public final enum LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/Filters/ReplaceRGBChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RGB"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum B:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

.field public static final enum G:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

.field public static final enum R:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

.field private static final synthetic a:[LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    const-string v1, "R"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->R:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    new-instance v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    const-string v1, "G"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->G:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    new-instance v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    const-string v1, "B"

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->B:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    const/4 v0, 0x3

    new-array v0, v0, [LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    sget-object v1, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->R:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->G:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    aput-object v1, v0, v3

    sget-object v1, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->B:LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    aput-object v1, v0, v4

    sput-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->a:[LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;
    .locals 1

    .prologue
    .line 16
    const-class v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;
    .locals 1

    .prologue
    .line 16
    sget-object v0, LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->a:[LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    invoke-virtual {v0}, [LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/Filters/ReplaceRGBChannel$RGB;

    return-object v0
.end method
