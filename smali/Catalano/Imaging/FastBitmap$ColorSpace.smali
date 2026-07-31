.class public final enum LCatalano/Imaging/FastBitmap$ColorSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCatalano/Imaging/FastBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCatalano/Imaging/FastBitmap$ColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

.field public static final enum RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

.field private static final synthetic a:[LCatalano/Imaging/FastBitmap$ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, LCatalano/Imaging/FastBitmap$ColorSpace;

    const-string v1, "Grayscale"

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/FastBitmap$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    .line 68
    new-instance v0, LCatalano/Imaging/FastBitmap$ColorSpace;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/FastBitmap$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [LCatalano/Imaging/FastBitmap$ColorSpace;

    sget-object v1, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    aput-object v1, v0, v2

    sget-object v1, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    aput-object v1, v0, v3

    sput-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->a:[LCatalano/Imaging/FastBitmap$ColorSpace;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LCatalano/Imaging/FastBitmap$ColorSpace;
    .locals 1

    .prologue
    .line 59
    const-class v0, LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/FastBitmap$ColorSpace;

    return-object v0
.end method

.method public static values()[LCatalano/Imaging/FastBitmap$ColorSpace;
    .locals 1

    .prologue
    .line 59
    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->a:[LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-virtual {v0}, [LCatalano/Imaging/FastBitmap$ColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCatalano/Imaging/FastBitmap$ColorSpace;

    return-object v0
.end method
