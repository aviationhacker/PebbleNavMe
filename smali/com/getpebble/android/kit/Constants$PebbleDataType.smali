.class public final enum Lcom/getpebble/android/kit/Constants$PebbleDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PebbleDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/getpebble/android/kit/Constants$PebbleDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BYTES:Lcom/getpebble/android/kit/Constants$PebbleDataType;

.field public static final enum INT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

.field public static final enum INVALID:Lcom/getpebble/android/kit/Constants$PebbleDataType;

.field public static final enum UINT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

.field private static final synthetic a:[Lcom/getpebble/android/kit/Constants$PebbleDataType;


# instance fields
.field public final ord:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 327
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v3, v3}, Lcom/getpebble/android/kit/Constants$PebbleDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->BYTES:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    .line 332
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    const-string v1, "UINT"

    invoke-direct {v0, v1, v6, v4}, Lcom/getpebble/android/kit/Constants$PebbleDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->UINT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    .line 337
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v4, v5}, Lcom/getpebble/android/kit/Constants$PebbleDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->INT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    .line 342
    new-instance v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    const-string v1, "INVALID"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v5, v2}, Lcom/getpebble/android/kit/Constants$PebbleDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->INVALID:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    .line 323
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/getpebble/android/kit/Constants$PebbleDataType;

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->BYTES:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->UINT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->INT:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->INVALID:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->a:[Lcom/getpebble/android/kit/Constants$PebbleDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 353
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->ord:B

    .line 354
    return-void
.end method

.method public static fromByte(B)Lcom/getpebble/android/kit/Constants$PebbleDataType;
    .locals 5

    .prologue
    .line 360
    invoke-static {}, Lcom/getpebble/android/kit/Constants$PebbleDataType;->values()[Lcom/getpebble/android/kit/Constants$PebbleDataType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 361
    iget-byte v4, v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->ord:B

    if-ne v4, p0, :cond_0

    .line 365
    :goto_1
    return-object v0

    .line 360
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getpebble/android/kit/Constants$PebbleDataType;
    .locals 1

    .prologue
    .line 323
    const-class v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;

    return-object v0
.end method

.method public static values()[Lcom/getpebble/android/kit/Constants$PebbleDataType;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/getpebble/android/kit/Constants$PebbleDataType;->a:[Lcom/getpebble/android/kit/Constants$PebbleDataType;

    invoke-virtual {v0}, [Lcom/getpebble/android/kit/Constants$PebbleDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/getpebble/android/kit/Constants$PebbleDataType;

    return-object v0
.end method
