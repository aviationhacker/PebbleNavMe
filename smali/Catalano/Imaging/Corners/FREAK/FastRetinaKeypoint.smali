.class public LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field public orientation:D

.field public scale:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    .line 108
    iput-wide p3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 149
    check-cast p1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;

    .line 151
    iget-object v2, p1, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    move v0, v1

    .line 152
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 153
    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    aget-byte v3, v3, v0

    aget-byte v4, v2, v0

    if-eq v3, v4, :cond_0

    .line 156
    :goto_1
    return v1

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getDescriptor()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    return-object v0
.end method

.method public getOrientation()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->orientation:D

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->scale:D

    return-wide v0
.end method

.method public setDescriptor([B)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    .line 99
    return-void
.end method

.method public setOrientation(D)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->orientation:D

    .line 67
    return-void
.end method

.method public setScale(D)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->scale:D

    .line 83
    return-void
.end method

.method public toBinary()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 117
    :goto_0
    iget-object v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    move v4, v1

    .line 118
    :goto_1
    const/16 v2, 0x8

    if-ge v4, v2, :cond_2

    .line 120
    iget-object v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    aget-byte v2, v2, v0

    shl-int v6, v3, v4

    and-int/2addr v2, v6

    if-eqz v2, :cond_0

    move v2, v3

    .line 121
    :goto_2
    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_0
    move v2, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    const-string v2, "0"

    goto :goto_3

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 133
    :goto_0
    iget-object v3, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 134
    const-string v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->a:[B

    aget-byte v5, v5, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toIntPoint()LCatalano/Core/IntPoint;
    .locals 6

    .prologue
    .line 144
    new-instance v0, LCatalano/Core/IntPoint;

    iget-wide v2, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->x:D

    iget-wide v4, p0, LCatalano/Imaging/Corners/FREAK/FastRetinaKeypoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/IntPoint;-><init>(DD)V

    return-object v0
.end method
