.class public final Lcom/google/common/net/InetAddresses$TeredoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/net/InetAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TeredoInfo"
.end annotation


# instance fields
.field private final a:Ljava/net/Inet4Address;

.field private final b:Ljava/net/Inet4Address;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V
    .locals 7
    .param p1    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/net/Inet4Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v6, 0xffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    if-ltz p3, :cond_0

    if-gt p3, v6, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "port \'%s\' is out of range (0 <= port <= 0xffff)"

    new-array v4, v1, [Ljava/lang/Object;

    .line 644
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 643
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 645
    if-ltz p4, :cond_1

    if-gt p4, v6, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "flags \'%s\' is out of range (0 <= flags <= 0xffff)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 646
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 645
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 648
    invoke-static {}, Lcom/google/common/net/InetAddresses;->a()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->a:Ljava/net/Inet4Address;

    .line 649
    invoke-static {}, Lcom/google/common/net/InetAddresses;->a()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    iput-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->b:Ljava/net/Inet4Address;

    .line 650
    iput p3, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->c:I

    .line 651
    iput p4, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->d:I

    .line 652
    return-void

    :cond_0
    move v0, v2

    .line 643
    goto :goto_0

    :cond_1
    move v0, v2

    .line 645
    goto :goto_1
.end method


# virtual methods
.method public getClient()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->b:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->d:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->c:I

    return v0
.end method

.method public getServer()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/common/net/InetAddresses$TeredoInfo;->a:Ljava/net/Inet4Address;

    return-object v0
.end method
