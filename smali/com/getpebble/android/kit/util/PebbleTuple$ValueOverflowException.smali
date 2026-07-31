.class public Lcom/getpebble/android/kit/util/PebbleTuple$ValueOverflowException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/util/PebbleTuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueOverflowException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "Value exceeds tuple capacity"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    return-void
.end method
