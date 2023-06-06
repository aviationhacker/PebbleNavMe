.class public Lorg/eclipse/jetty/websocket/FixedMaskGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/MaskGen;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/FixedMaskGen;-><init>([B)V

    .line 30
    return-void

    .line 29
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/FixedMaskGen;->a:[B

    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/FixedMaskGen;->a:[B

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method


# virtual methods
.method public genMask([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/FixedMaskGen;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-void
.end method
