.class public Lorg/eclipse/jetty/websocket/ZeroMaskGen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/MaskGen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public genMask([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput-byte v3, p1, v2

    aput-byte v3, p1, v1

    aput-byte v3, p1, v0

    aput-byte v3, p1, v3

    .line 27
    return-void
.end method
