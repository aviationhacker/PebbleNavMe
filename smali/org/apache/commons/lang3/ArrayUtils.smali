.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 50
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 54
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 58
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 62
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 66
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 70
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 74
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 78
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 86
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 90
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 94
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 98
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 102
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 106
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 110
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 114
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 118
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4921
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4922
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 4923
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4926
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4927
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4928
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 4929
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4932
    :cond_2
    return-object v1
.end method

.method private static a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4290
    if-nez p0, :cond_2

    .line 4291
    if-eqz p1, :cond_0

    .line 4292
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4294
    :cond_0
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4295
    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4308
    :cond_1
    :goto_0
    return-object v0

    .line 4298
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4299
    if-gt p1, v1, :cond_3

    if-gez p1, :cond_4

    .line 4300
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4302
    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4303
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4304
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4305
    if-ge p1, v1, :cond_1

    .line 4306
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3976
    if-eqz p0, :cond_0

    .line 3977
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 3978
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 3979
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3982
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2

    .prologue
    .line 3799
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 3800
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 3801
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2

    .prologue
    .line 4120
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2

    .prologue
    .line 3826
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 3827
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 3828
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2

    .prologue
    .line 4089
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3

    .prologue
    .line 3853
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    .line 3854
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3855
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2

    .prologue
    .line 4275
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2

    .prologue
    .line 3880
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    .line 3881
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3882
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2

    .prologue
    .line 4244
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2

    .prologue
    .line 3907
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 3908
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 3909
    return-object v0
.end method

.method public static add([III)[I
    .locals 2

    .prologue
    .line 4182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2

    .prologue
    .line 4213
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3

    .prologue
    .line 3934
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 3935
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 3936
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4016
    .line 4017
    if-eqz p0, :cond_0

    .line 4018
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4025
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4026
    return-object v0

    .line 4019
    :cond_0
    if-eqz p2, :cond_1

    .line 4020
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 4022
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and element cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 3737
    if-eqz p0, :cond_0

    .line 3738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3745
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 3746
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 3747
    return-object v0

    .line 3739
    :cond_0
    if-eqz p1, :cond_1

    .line 3740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 3742
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .locals 2

    .prologue
    .line 4151
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2

    .prologue
    .line 3961
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    .line 3962
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 3963
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2

    .prologue
    .line 4057
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2

    .prologue
    .line 3772
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    .line 3773
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 3774
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3550
    if-nez p0, :cond_0

    .line 3551
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 3558
    :goto_0
    return-object v0

    .line 3552
    :cond_0
    if-nez p1, :cond_1

    .line 3553
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 3555
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3556
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3557
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3521
    if-nez p0, :cond_0

    .line 3522
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 3529
    :goto_0
    return-object v0

    .line 3523
    :cond_0
    if-nez p1, :cond_1

    .line 3524
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 3526
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 3527
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3528
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3695
    if-nez p0, :cond_0

    .line 3696
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 3703
    :goto_0
    return-object v0

    .line 3697
    :cond_0
    if-nez p1, :cond_1

    .line 3698
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 3700
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 3701
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3702
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3666
    if-nez p0, :cond_0

    .line 3667
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 3674
    :goto_0
    return-object v0

    .line 3668
    :cond_0
    if-nez p1, :cond_1

    .line 3669
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 3671
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 3672
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3673
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3608
    if-nez p0, :cond_0

    .line 3609
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 3616
    :goto_0
    return-object v0

    .line 3610
    :cond_0
    if-nez p1, :cond_1

    .line 3611
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 3613
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 3614
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3615
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3637
    if-nez p0, :cond_0

    .line 3638
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 3645
    :goto_0
    return-object v0

    .line 3639
    :cond_0
    if-nez p1, :cond_1

    .line 3640
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 3642
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3643
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3644
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3446
    if-nez p0, :cond_0

    .line 3447
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 3471
    :goto_0
    return-object v0

    .line 3448
    :cond_0
    if-nez p1, :cond_1

    .line 3449
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3451
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 3453
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 3454
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3456
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3457
    :catch_0
    move-exception v0

    .line 3464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3465
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3466
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in an array of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3469
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3579
    if-nez p0, :cond_0

    .line 3580
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 3587
    :goto_0
    return-object v0

    .line 3581
    :cond_0
    if-nez p1, :cond_1

    .line 3582
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 3584
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3585
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3586
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3492
    if-nez p0, :cond_0

    .line 3493
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 3500
    :goto_0
    return-object v0

    .line 3494
    :cond_0
    if-nez p1, :cond_1

    .line 3495
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 3497
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 3498
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3499
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1

    .prologue
    .line 397
    if-nez p0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1

    .prologue
    .line 413
    if-nez p0, :cond_0

    .line 414
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1

    .prologue
    .line 429
    if-nez p0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 432
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1

    .prologue
    .line 349
    if-nez p0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1

    .prologue
    .line 365
    if-nez p0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2

    .prologue
    .line 2238
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2

    .prologue
    .line 2135
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3

    .prologue
    .line 2445
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2462
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2

    .prologue
    .line 2565
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2

    .prologue
    .line 1924
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3

    .prologue
    .line 1821
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1718
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2

    .prologue
    .line 2027
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2

    .prologue
    .line 2670
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1366
    if-nez p0, :cond_0

    .line 1367
    const/4 v0, 0x0

    .line 1369
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1

    .prologue
    .line 2151
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2169
    if-nez p0, :cond_1

    move p2, v0

    .line 2180
    :cond_0
    :goto_0
    return p2

    .line 2172
    :cond_1
    if-gez p2, :cond_2

    .line 2173
    const/4 p2, 0x0

    .line 2175
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2176
    aget-byte v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2175
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2180
    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1

    .prologue
    .line 2044
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2063
    if-nez p0, :cond_1

    move p2, v0

    .line 2074
    :cond_0
    :goto_0
    return p2

    .line 2066
    :cond_1
    if-gez p2, :cond_2

    .line 2067
    const/4 p2, 0x0

    .line 2069
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2070
    aget-char v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2069
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2074
    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1

    .prologue
    .line 2254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7

    .prologue
    .line 2271
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2289
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2300
    :cond_0
    :goto_0
    return p3

    .line 2292
    :cond_1
    if-gez p3, :cond_2

    .line 2293
    const/4 p3, 0x0

    .line 2295
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 2296
    aget-wide v2, p0, p3

    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    .line 2295
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 2300
    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 2321
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2334
    :cond_0
    :goto_0
    return p3

    .line 2324
    :cond_1
    if-gez p3, :cond_2

    .line 2325
    const/4 p3, 0x0

    .line 2327
    :cond_2
    sub-double v2, p1, p4

    .line 2328
    add-double v4, p1, p4

    .line 2329
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_4

    .line 2330
    aget-wide v6, p0, p3

    cmpl-double v1, v6, v2

    if-ltz v1, :cond_3

    aget-wide v6, p0, p3

    cmpg-double v1, v6, v4

    if-lez v1, :cond_0

    .line 2329
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move p3, v0

    .line 2334
    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1

    .prologue
    .line 2478
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2496
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2507
    :cond_0
    :goto_0
    return p2

    .line 2499
    :cond_1
    if-gez p2, :cond_2

    .line 2500
    const/4 p2, 0x0

    .line 2502
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2503
    aget v1, p0, p2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 2502
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2507
    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1

    .prologue
    .line 1837
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1855
    if-nez p0, :cond_1

    move p2, v0

    .line 1866
    :cond_0
    :goto_0
    return p2

    .line 1858
    :cond_1
    if-gez p2, :cond_2

    .line 1859
    const/4 p2, 0x0

    .line 1861
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 1862
    aget v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 1861
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 1866
    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 1752
    if-nez p0, :cond_1

    move p3, v0

    .line 1763
    :cond_0
    :goto_0
    return p3

    .line 1755
    :cond_1
    if-gez p3, :cond_2

    .line 1756
    const/4 p3, 0x0

    .line 1758
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 1759
    aget-wide v2, p0, p3

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1758
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 1763
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1615
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1633
    if-nez p0, :cond_1

    move v0, v1

    .line 1652
    :cond_0
    :goto_0
    return v0

    .line 1636
    :cond_1
    if-gez p2, :cond_4

    .line 1637
    const/4 v0, 0x0

    .line 1639
    :goto_1
    if-nez p1, :cond_2

    .line 1640
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1641
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1645
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1646
    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1647
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    .line 1652
    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method public static indexOf([SS)I
    .locals 1

    .prologue
    .line 1940
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1958
    if-nez p0, :cond_1

    move p2, v0

    .line 1969
    :cond_0
    :goto_0
    return p2

    .line 1961
    :cond_1
    if-gez p2, :cond_2

    .line 1962
    const/4 p2, 0x0

    .line 1964
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 1965
    aget-short v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 1964
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 1969
    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1

    .prologue
    .line 2581
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2600
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2611
    :cond_0
    :goto_0
    return p2

    .line 2603
    :cond_1
    if-gez p2, :cond_2

    .line 2604
    const/4 p2, 0x0

    .line 2606
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2607
    aget-boolean v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2606
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2611
    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1

    .prologue
    .line 3284
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1

    .prologue
    .line 3273
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1

    .prologue
    .line 3295
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1

    .prologue
    .line 3306
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1

    .prologue
    .line 3251
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1

    .prologue
    .line 3240
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3229
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1

    .prologue
    .line 3262
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1

    .prologue
    .line 3317
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1

    .prologue
    .line 3385
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1

    .prologue
    .line 3374
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1

    .prologue
    .line 3396
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1

    .prologue
    .line 3407
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1

    .prologue
    .line 3352
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1

    .prologue
    .line 3341
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 3330
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1

    .prologue
    .line 3363
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1

    .prologue
    .line 3418
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2

    .prologue
    .line 1282
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1285
    :cond_2
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2

    .prologue
    .line 1264
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1267
    :cond_2
    const/4 v0, 0x0

    .line 1269
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2

    .prologue
    .line 1300
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1303
    :cond_2
    const/4 v0, 0x0

    .line 1305
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2

    .prologue
    .line 1318
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1321
    :cond_2
    const/4 v0, 0x0

    .line 1323
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2

    .prologue
    .line 1228
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1231
    :cond_2
    const/4 v0, 0x0

    .line 1233
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2

    .prologue
    .line 1210
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1213
    :cond_2
    const/4 v0, 0x0

    .line 1215
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1192
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1195
    :cond_2
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2

    .prologue
    .line 1246
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1249
    :cond_2
    const/4 v0, 0x0

    .line 1251
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2

    .prologue
    .line 1336
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1339
    :cond_2
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1382
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1

    .prologue
    .line 2194
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2212
    if-nez p0, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return v0

    .line 2215
    :cond_1
    if-ltz p2, :cond_0

    .line 2217
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2218
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 2220
    :goto_1
    if-ltz v1, :cond_0

    .line 2221
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 2222
    goto :goto_0

    .line 2220
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([CC)I
    .locals 1

    .prologue
    .line 2089
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2108
    if-nez p0, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return v0

    .line 2111
    :cond_1
    if-ltz p2, :cond_0

    .line 2113
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2114
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 2116
    :goto_1
    if-ltz v1, :cond_0

    .line 2117
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 2118
    goto :goto_0

    .line 2116
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([DD)I
    .locals 1

    .prologue
    .line 2348
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7

    .prologue
    .line 2365
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2383
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2396
    :cond_0
    :goto_0
    return v0

    .line 2386
    :cond_1
    if-ltz p3, :cond_0

    .line 2388
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 2389
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_2
    move v1, p3

    .line 2391
    :goto_1
    if-ltz v1, :cond_0

    .line 2392
    aget-wide v2, p0, v1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_3

    move v0, v1

    .line 2393
    goto :goto_0

    .line 2391
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([DDID)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 2417
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2432
    :cond_0
    :goto_0
    return v0

    .line 2420
    :cond_1
    if-ltz p3, :cond_0

    .line 2422
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 2423
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 2425
    :cond_2
    sub-double v2, p1, p4

    .line 2426
    add-double v4, p1, p4

    move v1, p3

    .line 2427
    :goto_1
    if-ltz v1, :cond_0

    .line 2428
    aget-wide v6, p0, v1

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_3

    aget-wide v6, p0, v1

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_3

    move v0, v1

    .line 2429
    goto :goto_0

    .line 2427
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([FF)I
    .locals 1

    .prologue
    .line 2521
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2539
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2552
    :cond_0
    :goto_0
    return v0

    .line 2542
    :cond_1
    if-ltz p2, :cond_0

    .line 2544
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2545
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 2547
    :goto_1
    if-ltz v1, :cond_0

    .line 2548
    aget v2, p0, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    move v0, v1

    .line 2549
    goto :goto_0

    .line 2547
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([II)I
    .locals 1

    .prologue
    .line 1880
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1898
    if-nez p0, :cond_1

    .line 1911
    :cond_0
    :goto_0
    return v0

    .line 1901
    :cond_1
    if-ltz p2, :cond_0

    .line 1903
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 1904
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 1906
    :goto_1
    if-ltz v1, :cond_0

    .line 1907
    aget v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 1908
    goto :goto_0

    .line 1906
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([JJ)I
    .locals 1

    .prologue
    .line 1777
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 1795
    if-nez p0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return v0

    .line 1798
    :cond_1
    if-ltz p3, :cond_0

    .line 1800
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 1801
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_2
    move v1, p3

    .line 1803
    :goto_1
    if-ltz v1, :cond_0

    .line 1804
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1805
    goto :goto_0

    .line 1803
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1666
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1684
    if-nez p0, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return v0

    .line 1687
    :cond_1
    if-ltz p2, :cond_0

    .line 1689
    array-length v1, p0

    if-lt p2, v1, :cond_5

    .line 1690
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1692
    :goto_1
    if-nez p1, :cond_3

    .line 1693
    :goto_2
    if-ltz v1, :cond_0

    .line 1694
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v0, v1

    .line 1695
    goto :goto_0

    .line 1693
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1698
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1699
    :goto_3
    if-ltz v1, :cond_0

    .line 1700
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1701
    goto :goto_0

    .line 1699
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([SS)I
    .locals 1

    .prologue
    .line 1983
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2001
    if-nez p0, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return v0

    .line 2004
    :cond_1
    if-ltz p2, :cond_0

    .line 2006
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2007
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 2009
    :goto_1
    if-ltz v1, :cond_0

    .line 2010
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 2011
    goto :goto_0

    .line 2009
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1

    .prologue
    .line 2626
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2644
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2657
    :cond_0
    :goto_0
    return v0

    .line 2647
    :cond_1
    if-ltz p2, :cond_0

    .line 2649
    array-length v1, p0

    if-lt p2, v1, :cond_2

    .line 2650
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_2
    move v1, p2

    .line 2652
    :goto_1
    if-ltz v1, :cond_0

    .line 2653
    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 2654
    goto :goto_0

    .line 2652
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static nullToEmpty([B)[B
    .locals 1

    .prologue
    .line 587
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 588
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 590
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1

    .prologue
    .line 567
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 570
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1

    .prologue
    .line 607
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 610
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1

    .prologue
    .line 627
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 628
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 630
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1

    .prologue
    .line 527
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 528
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 530
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1

    .prologue
    .line 507
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 510
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 807
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 810
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 747
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 748
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 750
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1

    .prologue
    .line 727
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 730
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 767
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 768
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 770
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 787
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 788
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 790
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 687
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 690
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 667
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 668
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 670
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 467
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 468
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 470
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 707
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 708
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 710
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 488
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 490
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1

    .prologue
    .line 547
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 550
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1

    .prologue
    .line 647
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 648
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 650
    :cond_1
    return-object p0
.end method

.method public static remove([BI)[B
    .locals 1

    .prologue
    .line 4473
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1

    .prologue
    .line 4538
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1

    .prologue
    .line 4603
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1

    .prologue
    .line 4668
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1

    .prologue
    .line 4733
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1

    .prologue
    .line 4798
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 4342
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1

    .prologue
    .line 4863
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1

    .prologue
    .line 4408
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2

    .prologue
    .line 4502
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4503
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4504
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 4506
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2

    .prologue
    .line 4567
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4568
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4569
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 4571
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 3

    .prologue
    .line 4632
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4633
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4634
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 4636
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2

    .prologue
    .line 4697
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4698
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4699
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 4701
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2

    .prologue
    .line 4762
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 4763
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4764
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 4766
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 3

    .prologue
    .line 4827
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 4828
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4829
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 4831
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 4372
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4373
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4374
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4376
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2

    .prologue
    .line 4892
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 4893
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4894
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 4896
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2

    .prologue
    .line 4437
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4438
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4439
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 4441
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 4

    .prologue
    .line 1515
    if-nez p0, :cond_1

    .line 1528
    :cond_0
    return-void

    .line 1518
    :cond_1
    const/4 v1, 0x0

    .line 1519
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1521
    :goto_0
    if-le v0, v1, :cond_0

    .line 1522
    aget-byte v2, p0, v0

    .line 1523
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 1524
    aput-byte v2, p0, v1

    .line 1525
    add-int/lit8 v0, v0, -0x1

    .line 1526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 4

    .prologue
    .line 1492
    if-nez p0, :cond_1

    .line 1505
    :cond_0
    return-void

    .line 1495
    :cond_1
    const/4 v1, 0x0

    .line 1496
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1498
    :goto_0
    if-le v0, v1, :cond_0

    .line 1499
    aget-char v2, p0, v0

    .line 1500
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 1501
    aput-char v2, p0, v1

    .line 1502
    add-int/lit8 v0, v0, -0x1

    .line 1503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6

    .prologue
    .line 1538
    if-nez p0, :cond_1

    .line 1551
    :cond_0
    return-void

    .line 1541
    :cond_1
    const/4 v1, 0x0

    .line 1542
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1544
    :goto_0
    if-le v0, v1, :cond_0

    .line 1545
    aget-wide v2, p0, v0

    .line 1546
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 1547
    aput-wide v2, p0, v1

    .line 1548
    add-int/lit8 v0, v0, -0x1

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4

    .prologue
    .line 1561
    if-nez p0, :cond_1

    .line 1574
    :cond_0
    return-void

    .line 1564
    :cond_1
    const/4 v1, 0x0

    .line 1565
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1567
    :goto_0
    if-le v0, v1, :cond_0

    .line 1568
    aget v2, p0, v0

    .line 1569
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1570
    aput v2, p0, v1

    .line 1571
    add-int/lit8 v0, v0, -0x1

    .line 1572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4

    .prologue
    .line 1446
    if-nez p0, :cond_1

    .line 1459
    :cond_0
    return-void

    .line 1449
    :cond_1
    const/4 v1, 0x0

    .line 1450
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1452
    :goto_0
    if-le v0, v1, :cond_0

    .line 1453
    aget v2, p0, v0

    .line 1454
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1455
    aput v2, p0, v1

    .line 1456
    add-int/lit8 v0, v0, -0x1

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6

    .prologue
    .line 1423
    if-nez p0, :cond_1

    .line 1436
    :cond_0
    return-void

    .line 1426
    :cond_1
    const/4 v1, 0x0

    .line 1427
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1429
    :goto_0
    if-le v0, v1, :cond_0

    .line 1430
    aget-wide v2, p0, v0

    .line 1431
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 1432
    aput-wide v2, p0, v1

    .line 1433
    add-int/lit8 v0, v0, -0x1

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1400
    if-nez p0, :cond_1

    .line 1413
    :cond_0
    return-void

    .line 1403
    :cond_1
    const/4 v1, 0x0

    .line 1404
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1406
    :goto_0
    if-le v0, v1, :cond_0

    .line 1407
    aget-object v2, p0, v0

    .line 1408
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 1409
    aput-object v2, p0, v1

    .line 1410
    add-int/lit8 v0, v0, -0x1

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4

    .prologue
    .line 1469
    if-nez p0, :cond_1

    .line 1482
    :cond_0
    return-void

    .line 1472
    :cond_1
    const/4 v1, 0x0

    .line 1473
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1475
    :goto_0
    if-le v0, v1, :cond_0

    .line 1476
    aget-short v2, p0, v0

    .line 1477
    aget-short v3, p0, v1

    aput-short v3, p0, v0

    .line 1478
    aput-short v2, p0, v1

    .line 1479
    add-int/lit8 v0, v0, -0x1

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 4

    .prologue
    .line 1584
    if-nez p0, :cond_1

    .line 1597
    :cond_0
    return-void

    .line 1587
    :cond_1
    const/4 v1, 0x0

    .line 1588
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1590
    :goto_0
    if-le v0, v1, :cond_0

    .line 1591
    aget-boolean v2, p0, v0

    .line 1592
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 1593
    aput-boolean v2, p0, v1

    .line 1594
    add-int/lit8 v0, v0, -0x1

    .line 1595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1042
    if-nez p0, :cond_0

    .line 1043
    const/4 v0, 0x0

    .line 1058
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1048
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1049
    array-length p2, p0

    .line 1051
    :cond_2
    sub-int v2, p2, p1

    .line 1052
    if-gtz v2, :cond_3

    .line 1053
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 1056
    :cond_3
    new-array v1, v2, [B

    .line 1057
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1058
    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1003
    if-nez p0, :cond_0

    .line 1004
    const/4 v0, 0x0

    .line 1019
    :goto_0
    return-object v0

    .line 1006
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1009
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1010
    array-length p2, p0

    .line 1012
    :cond_2
    sub-int v2, p2, p1

    .line 1013
    if-gtz v2, :cond_3

    .line 1014
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 1017
    :cond_3
    new-array v1, v2, [C

    .line 1018
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1019
    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1081
    if-nez p0, :cond_0

    .line 1082
    const/4 v0, 0x0

    .line 1097
    :goto_0
    return-object v0

    .line 1084
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1087
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1088
    array-length p2, p0

    .line 1090
    :cond_2
    sub-int v2, p2, p1

    .line 1091
    if-gtz v2, :cond_3

    .line 1092
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 1095
    :cond_3
    new-array v1, v2, [D

    .line 1096
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1097
    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1120
    if-nez p0, :cond_0

    .line 1121
    const/4 v0, 0x0

    .line 1136
    :goto_0
    return-object v0

    .line 1123
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1126
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1127
    array-length p2, p0

    .line 1129
    :cond_2
    sub-int v2, p2, p1

    .line 1130
    if-gtz v2, :cond_3

    .line 1131
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 1134
    :cond_3
    new-array v1, v2, [F

    .line 1135
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1136
    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 925
    if-nez p0, :cond_0

    .line 926
    const/4 v0, 0x0

    .line 941
    :goto_0
    return-object v0

    .line 928
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 931
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 932
    array-length p2, p0

    .line 934
    :cond_2
    sub-int v2, p2, p1

    .line 935
    if-gtz v2, :cond_3

    .line 936
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 939
    :cond_3
    new-array v1, v2, [I

    .line 940
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 941
    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 886
    if-nez p0, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 902
    :goto_0
    return-object v0

    .line 889
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 892
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 893
    array-length p2, p0

    .line 895
    :cond_2
    sub-int v2, p2, p1

    .line 896
    if-gtz v2, :cond_3

    .line 897
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 900
    :cond_3
    new-array v1, v2, [J

    .line 901
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 902
    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 844
    if-nez p0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 863
    :goto_0
    return-object v0

    .line 847
    :cond_0
    if-gez p1, :cond_1

    move p1, v1

    .line 850
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 851
    array-length p2, p0

    .line 853
    :cond_2
    sub-int v2, p2, p1

    .line 854
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 855
    if-gtz v2, :cond_3

    .line 857
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 861
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 862
    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 964
    if-nez p0, :cond_0

    .line 965
    const/4 v0, 0x0

    .line 980
    :goto_0
    return-object v0

    .line 967
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 970
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 971
    array-length p2, p0

    .line 973
    :cond_2
    sub-int v2, p2, p1

    .line 974
    if-gtz v2, :cond_3

    .line 975
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 978
    :cond_3
    new-array v1, v2, [S

    .line 979
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 980
    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1159
    if-nez p0, :cond_0

    .line 1160
    const/4 v0, 0x0

    .line 1175
    :goto_0
    return-object v0

    .line 1162
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1165
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1166
    array-length p2, p0

    .line 1168
    :cond_2
    sub-int v2, p2, p1

    .line 1169
    if-gtz v2, :cond_3

    .line 1170
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 1173
    :cond_3
    new-array v1, v2, [Z

    .line 1174
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1175
    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 298
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 232
    if-nez p0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v2, v3

    .line 236
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    .line 237
    aget-object v0, p0, v2

    .line 238
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 239
    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 241
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 242
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 243
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', has a length less than 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    aget-object v0, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 250
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v4

    .line 255
    goto/16 :goto_0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 3208
    if-nez p0, :cond_0

    .line 3209
    const/4 v0, 0x0

    .line 3217
    :goto_0
    return-object v0

    .line 3210
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3211
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 3213
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Boolean;

    .line 3214
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3215
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, v2, v0

    .line 3214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3215
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3217
    goto :goto_0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 3004
    if-nez p0, :cond_0

    .line 3005
    const/4 v0, 0x0

    .line 3013
    :goto_0
    return-object v0

    .line 3006
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3007
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 3009
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    .line 3010
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3011
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3010
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3013
    goto :goto_0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3

    .prologue
    .line 2732
    if-nez p0, :cond_0

    .line 2733
    const/4 v0, 0x0

    .line 2741
    :goto_0
    return-object v0

    .line 2734
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2735
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 2737
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Character;

    .line 2738
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2739
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2741
    goto :goto_0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4

    .prologue
    .line 3072
    if-nez p0, :cond_0

    .line 3073
    const/4 v0, 0x0

    .line 3081
    :goto_0
    return-object v0

    .line 3074
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3075
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 3077
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    .line 3078
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3079
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3078
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3081
    goto :goto_0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3

    .prologue
    .line 3140
    if-nez p0, :cond_0

    .line 3141
    const/4 v0, 0x0

    .line 3149
    :goto_0
    return-object v0

    .line 3142
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3143
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 3145
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    .line 3146
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3147
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3149
    goto :goto_0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2868
    if-nez p0, :cond_0

    .line 2869
    const/4 v0, 0x0

    .line 2877
    :goto_0
    return-object v0

    .line 2870
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2871
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 2873
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 2874
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2875
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2874
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2877
    goto :goto_0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4

    .prologue
    .line 2800
    if-nez p0, :cond_0

    .line 2801
    const/4 v0, 0x0

    .line 2809
    :goto_0
    return-object v0

    .line 2802
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2803
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 2805
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    .line 2806
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2807
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2806
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2809
    goto :goto_0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3

    .prologue
    .line 2936
    if-nez p0, :cond_0

    .line 2937
    const/4 v0, 0x0

    .line 2945
    :goto_0
    return-object v0

    .line 2938
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2939
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 2941
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Short;

    .line 2942
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2943
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2942
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2945
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    .prologue
    .line 2960
    if-nez p0, :cond_0

    .line 2961
    const/4 v0, 0x0

    .line 2969
    :goto_0
    return-object v0

    .line 2962
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2963
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2965
    :cond_1
    array-length v0, p0

    new-array v1, v0, [B

    .line 2966
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2967
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 2966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2969
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 3

    .prologue
    .line 2982
    if-nez p0, :cond_0

    .line 2983
    const/4 v0, 0x0

    .line 2992
    :goto_0
    return-object v0

    .line 2984
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2985
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 2987
    :cond_1
    array-length v0, p0

    new-array v2, v0, [B

    .line 2988
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2989
    aget-object v1, p0, v0

    .line 2990
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-byte v1, v2, v0

    .line 2988
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2990
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2992
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3

    .prologue
    .line 2688
    if-nez p0, :cond_0

    .line 2689
    const/4 v0, 0x0

    .line 2697
    :goto_0
    return-object v0

    .line 2690
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2691
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2693
    :cond_1
    array-length v0, p0

    new-array v1, v0, [C

    .line 2694
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2695
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2697
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 3

    .prologue
    .line 2710
    if-nez p0, :cond_0

    .line 2711
    const/4 v0, 0x0

    .line 2720
    :goto_0
    return-object v0

    .line 2712
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2713
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2715
    :cond_1
    array-length v0, p0

    new-array v2, v0, [C

    .line 2716
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2717
    aget-object v1, p0, v0

    .line 2718
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-char v1, v2, v0

    .line 2716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2718
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2720
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4

    .prologue
    .line 3028
    if-nez p0, :cond_0

    .line 3029
    const/4 v0, 0x0

    .line 3037
    :goto_0
    return-object v0

    .line 3030
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3031
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3033
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 3034
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3035
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3034
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3037
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5

    .prologue
    .line 3050
    if-nez p0, :cond_0

    .line 3051
    const/4 v0, 0x0

    .line 3060
    :goto_0
    return-object v0

    .line 3052
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3053
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3055
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 3056
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3057
    aget-object v2, p0, v0

    .line 3058
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 3056
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3058
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3060
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3

    .prologue
    .line 3096
    if-nez p0, :cond_0

    .line 3097
    const/4 v0, 0x0

    .line 3105
    :goto_0
    return-object v0

    .line 3098
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3099
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3101
    :cond_1
    array-length v0, p0

    new-array v1, v0, [F

    .line 3102
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3103
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 3102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3105
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 3

    .prologue
    .line 3118
    if-nez p0, :cond_0

    .line 3119
    const/4 v0, 0x0

    .line 3128
    :goto_0
    return-object v0

    .line 3120
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3121
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3123
    :cond_1
    array-length v0, p0

    new-array v2, v0, [F

    .line 3124
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3125
    aget-object v1, p0, v0

    .line 3126
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 3124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3126
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3128
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3

    .prologue
    .line 2824
    if-nez p0, :cond_0

    .line 2825
    const/4 v0, 0x0

    .line 2833
    :goto_0
    return-object v0

    .line 2826
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2827
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2829
    :cond_1
    array-length v0, p0

    new-array v1, v0, [I

    .line 2830
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2831
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 2830
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2833
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 3

    .prologue
    .line 2846
    if-nez p0, :cond_0

    .line 2847
    const/4 v0, 0x0

    .line 2856
    :goto_0
    return-object v0

    .line 2848
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2849
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 2851
    :cond_1
    array-length v0, p0

    new-array v2, v0, [I

    .line 2852
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2853
    aget-object v1, p0, v0

    .line 2854
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 2852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2854
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2856
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4

    .prologue
    .line 2756
    if-nez p0, :cond_0

    .line 2757
    const/4 v0, 0x0

    .line 2765
    :goto_0
    return-object v0

    .line 2758
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2759
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2761
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 2762
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2763
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2765
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5

    .prologue
    .line 2778
    if-nez p0, :cond_0

    .line 2779
    const/4 v0, 0x0

    .line 2788
    :goto_0
    return-object v0

    .line 2780
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2781
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 2783
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 2784
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 2785
    aget-object v2, p0, v0

    .line 2786
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 2784
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2786
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2788
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3

    .prologue
    .line 2892
    if-nez p0, :cond_0

    .line 2893
    const/4 v0, 0x0

    .line 2901
    :goto_0
    return-object v0

    .line 2894
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2895
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2897
    :cond_1
    array-length v0, p0

    new-array v1, v0, [S

    .line 2898
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2899
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 2898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2901
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 3

    .prologue
    .line 2914
    if-nez p0, :cond_0

    .line 2915
    const/4 v0, 0x0

    .line 2924
    :goto_0
    return-object v0

    .line 2916
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2917
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 2919
    :cond_1
    array-length v0, p0

    new-array v2, v0, [S

    .line 2920
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2921
    aget-object v1, p0, v0

    .line 2922
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-short v1, v2, v0

    .line 2920
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2922
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2924
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3

    .prologue
    .line 3164
    if-nez p0, :cond_0

    .line 3165
    const/4 v0, 0x0

    .line 3173
    :goto_0
    return-object v0

    .line 3166
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3167
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3169
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Z

    .line 3170
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3171
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3173
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 3

    .prologue
    .line 3186
    if-nez p0, :cond_0

    .line 3187
    const/4 v0, 0x0

    .line 3196
    :goto_0
    return-object v0

    .line 3188
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3189
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3191
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Z

    .line 3192
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3193
    aget-object v1, p0, v0

    .line 3194
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-boolean v1, v2, v0

    .line 3192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3194
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3196
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 175
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
