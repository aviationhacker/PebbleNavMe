.class public final enum Lcom/getpebble/android/kit/Constants$PebbleAppType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PebbleAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/getpebble/android/kit/Constants$PebbleAppType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GOLF:Lcom/getpebble/android/kit/Constants$PebbleAppType;

.field public static final enum OTHER:Lcom/getpebble/android/kit/Constants$PebbleAppType;

.field public static final enum SPORTS:Lcom/getpebble/android/kit/Constants$PebbleAppType;

.field private static final synthetic a:[Lcom/getpebble/android/kit/Constants$PebbleAppType;


# instance fields
.field public final ord:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;

    const-string v1, "SPORTS"

    invoke-direct {v0, v1, v3, v3}, Lcom/getpebble/android/kit/Constants$PebbleAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->SPORTS:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    .line 297
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;

    const-string v1, "GOLF"

    invoke-direct {v0, v1, v4, v4}, Lcom/getpebble/android/kit/Constants$PebbleAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->GOLF:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    .line 302
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;

    const-string v1, "OTHER"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v5, v2}, Lcom/getpebble/android/kit/Constants$PebbleAppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->OTHER:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/getpebble/android/kit/Constants$PebbleAppType;

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleAppType;->SPORTS:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleAppType;->GOLF:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleAppType;->OTHER:Lcom/getpebble/android/kit/Constants$PebbleAppType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->a:[Lcom/getpebble/android/kit/Constants$PebbleAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 316
    iput p3, p0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->ord:I

    .line 317
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getpebble/android/kit/Constants$PebbleAppType;
    .locals 1

    .prologue
    .line 287
    const-class v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;

    return-object v0
.end method

.method public static values()[Lcom/getpebble/android/kit/Constants$PebbleAppType;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/getpebble/android/kit/Constants$PebbleAppType;->a:[Lcom/getpebble/android/kit/Constants$PebbleAppType;

    invoke-virtual {v0}, [Lcom/getpebble/android/kit/Constants$PebbleAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/getpebble/android/kit/Constants$PebbleAppType;

    return-object v0
.end method
