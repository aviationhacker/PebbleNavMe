.class final enum Lcom/getpebble/android/kit/util/PebbleTuple$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/util/PebbleTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/getpebble/android/kit/util/PebbleTuple$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

.field public static final enum b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

.field public static final enum c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

.field public static final enum d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

.field private static final synthetic f:[Lcom/getpebble/android/kit/util/PebbleTuple$b;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/getpebble/android/kit/util/PebbleTuple$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 93
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v3, v3}, Lcom/getpebble/android/kit/util/PebbleTuple$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 94
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v4, v4}, Lcom/getpebble/android/kit/util/PebbleTuple$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 95
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v5, v6}, Lcom/getpebble/android/kit/util/PebbleTuple$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 91
    new-array v0, v6, [Lcom/getpebble/android/kit/util/PebbleTuple$b;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->f:[Lcom/getpebble/android/kit/util/PebbleTuple$b;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->e:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getpebble/android/kit/util/PebbleTuple$b;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    return-object v0
.end method

.method public static values()[Lcom/getpebble/android/kit/util/PebbleTuple$b;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->f:[Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-virtual {v0}, [Lcom/getpebble/android/kit/util/PebbleTuple$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/getpebble/android/kit/util/PebbleTuple$b;

    return-object v0
.end method
