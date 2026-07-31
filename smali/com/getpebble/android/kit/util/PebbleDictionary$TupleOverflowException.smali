.class public Lcom/getpebble/android/kit/util/PebbleDictionary$TupleOverflowException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/util/PebbleDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TupleOverflowException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "Too many tuples in dict"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 280
    return-void
.end method
