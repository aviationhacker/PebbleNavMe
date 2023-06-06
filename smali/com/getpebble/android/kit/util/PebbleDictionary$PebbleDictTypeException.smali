.class public Lcom/getpebble/android/kit/util/PebbleDictionary$PebbleDictTypeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/util/PebbleDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PebbleDictTypeException"
.end annotation


# direct methods
.method public constructor <init>(JLcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$a;)V
    .locals 5

    .prologue
    .line 272
    const-string v0, "Expected type \'%s\', but got \'%s\' for key 0x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p4}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 274
    return-void
.end method
