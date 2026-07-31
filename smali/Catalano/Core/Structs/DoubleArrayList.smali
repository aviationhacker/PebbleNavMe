.class public final LCatalano/Core/Structs/DoubleArrayList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[D

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0xa

    invoke-direct {p0, v0}, LCatalano/Core/Structs/DoubleArrayList;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [D

    iput-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    .line 67
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    .line 68
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .prologue
    .line 77
    array-length v0, p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, LCatalano/Core/Structs/DoubleArrayList;-><init>(I)V

    .line 78
    invoke-virtual {p0, p1}, LCatalano/Core/Structs/DoubleArrayList;->add([D)V

    .line 79
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 3

    .prologue
    .line 131
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LCatalano/Core/Structs/DoubleArrayList;->ensureCapacity(I)V

    .line 132
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    iget v1, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    aput-wide p1, v0, v1

    .line 133
    return-void
.end method

.method public add([D)V
    .locals 4

    .prologue
    .line 141
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LCatalano/Core/Structs/DoubleArrayList;->ensureCapacity(I)V

    .line 142
    const/4 v0, 0x0

    iget-object v1, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    iget v2, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    .line 144
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    .line 177
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 90
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    new-array v0, v0, [D

    .line 92
    iget-object v1, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    iget-object v2, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    .line 95
    :cond_0
    return-void
.end method

.method public get(I)D
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)D
    .locals 7

    .prologue
    .line 187
    if-ltz p1, :cond_0

    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    if-lt p1, v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, LCatalano/Core/Structs/DoubleArrayList;->get(I)D

    move-result-wide v0

    .line 193
    if-nez p1, :cond_3

    .line 195
    iget-object v2, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    const/4 v3, 0x1

    iget-object v4, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    const/4 v5, 0x0

    iget v6, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_2
    :goto_0
    iget v2, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    .line 205
    return-wide v0

    .line 196
    :cond_3
    iget v2, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v2, v2, -0x1

    if-eq v2, p1, :cond_2

    .line 201
    iget-object v2, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    iget v5, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public set(ID)V
    .locals 2

    .prologue
    .line 165
    if-ltz p1, :cond_0

    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    if-lt p1, v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    aput-wide p2, v0, p1

    .line 169
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    return v0
.end method

.method public toArray()[D
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LCatalano/Core/Structs/DoubleArrayList;->toArray([D)[D

    move-result-object v0

    return-object v0
.end method

.method public toArray([D)[D
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, LCatalano/Core/Structs/DoubleArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    :cond_0
    iget v0, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    new-array p1, v0, [D

    .line 233
    :cond_1
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    iget v1, p0, LCatalano/Core/Structs/DoubleArrayList;->b:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    return-object p1
.end method

.method public trimToSize()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    array-length v0, v0

    invoke-virtual {p0}, LCatalano/Core/Structs/DoubleArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, LCatalano/Core/Structs/DoubleArrayList;->toArray()[D

    move-result-object v0

    .line 121
    iput-object v0, p0, LCatalano/Core/Structs/DoubleArrayList;->a:[D

    .line 123
    :cond_0
    return-void
.end method
