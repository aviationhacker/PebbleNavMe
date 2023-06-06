.class final Lcom/google/common/io/ByteStreams$c;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/ByteStreams$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/common/io/ByteStreams$c;-><init>()V

    return-void
.end method


# virtual methods
.method a([BI)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$c;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/io/ByteStreams$c;->count:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    return-void
.end method
