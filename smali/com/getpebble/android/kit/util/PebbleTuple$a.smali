.class final enum Lcom/getpebble/android/kit/util/PebbleTuple$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/util/PebbleTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/getpebble/android/kit/util/PebbleTuple$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

.field public static final enum b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

.field public static final enum c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

.field public static final enum d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

.field private static final synthetic f:[Lcom/getpebble/android/kit/util/PebbleTuple$a;


# instance fields
.field public final e:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v2, v2}, Lcom/getpebble/android/kit/util/PebbleTuple$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 106
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3, v3}, Lcom/getpebble/android/kit/util/PebbleTuple$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 107
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    const-string v1, "UINT"

    invoke-direct {v0, v1, v4, v4}, Lcom/getpebble/android/kit/util/PebbleTuple$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 108
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    const-string v1, "INT"

    invoke-direct {v0, v1, v5, v5}, Lcom/getpebble/android/kit/util/PebbleTuple$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$a;->b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->f:[Lcom/getpebble/android/kit/util/PebbleTuple$a;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->e:B

    .line 114
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/getpebble/android/kit/util/PebbleTuple$a;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    return-object v0
.end method

.method public static values()[Lcom/getpebble/android/kit/util/PebbleTuple$a;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->f:[Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-virtual {v0}, [Lcom/getpebble/android/kit/util/PebbleTuple$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/getpebble/android/kit/util/PebbleTuple$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
