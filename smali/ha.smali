.class final Lha;
.super Lhb;
.source "SourceFile"

# interfaces
.implements Lgy;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lhb;-><init>()V

    .line 62
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lha;->f:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lha;->d:[Lhb$a;

    .line 207
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lha;->e:J

    .line 208
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 199
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 200
    return-void
.end method


# virtual methods
.method final a(JJ)J
    .locals 3

    .prologue
    .line 56
    add-long v0, p1, p3

    return-wide v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lha;->a(J)V

    .line 86
    return-void
.end method

.method public a(J)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v2, p0, Lha;->d:[Lhb$a;

    if-nez v2, :cond_0

    iget-wide v4, p0, Lha;->e:J

    add-long v6, v4, p1

    invoke-virtual {p0, v4, v5, v6, v7}, Lha;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    :cond_0
    sget-object v0, Lha;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lt v3, v1, :cond_1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aget v4, v0, v4

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    iget-wide v4, v2, Lhb$a;->a:J

    add-long v6, v4, p1

    .line 76
    invoke-virtual {v2, v4, v5, v6, v7}, Lhb$a;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lha;->a(J[IZ)V

    .line 79
    :cond_2
    return-void
.end method

.method public b()J
    .locals 8

    .prologue
    .line 105
    iget-wide v0, p0, Lha;->e:J

    .line 106
    iget-object v3, p0, Lha;->d:[Lhb$a;

    .line 107
    if-eqz v3, :cond_1

    .line 108
    array-length v4, v3

    .line 109
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 110
    aget-object v5, v3, v2

    .line 111
    if-eqz v5, :cond_0

    .line 112
    iget-wide v6, v5, Lhb$a;->a:J

    add-long/2addr v0, v6

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lha;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
