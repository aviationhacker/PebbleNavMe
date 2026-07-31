.class public final Lcom/google/common/collect/ObjectArrays;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/ObjectArrays;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    return-object p0
.end method

.method static a([Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 219
    aget-object v0, p0, p1

    .line 220
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 221
    aput-object v0, p0, p2

    .line 222
    return-void
.end method

.method private static a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    add-int/lit8 v1, v0, 0x1

    aput-object v3, p1, v0

    move v0, v1

    .line 211
    goto :goto_0

    .line 212
    :cond_0
    return-object p1
.end method

.method public static a(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 143
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 144
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 146
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 148
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 150
    :cond_1
    return-object p1
.end method

.method static varargs a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 113
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    return-object v0
.end method

.method static b([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 230
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-object p0
.end method

.method public static concat(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 89
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 90
    aput-object p0, v0, v3

    .line 91
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 105
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 106
    array-length v1, p0

    aput-object p1, v0, v1

    .line 107
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 74
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-object v0
.end method

.method public static newArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1}, Ljn;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
