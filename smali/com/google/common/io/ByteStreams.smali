.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$d;,
        Lcom/google/common/io/ByteStreams$b;,
        Lcom/google/common/io/ByteStreams$a;,
        Lcom/google/common/io/ByteStreams$c;
    }
.end annotation


# static fields
.field static final a:[B

.field private static final b:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/io/ByteStreams;->a:[B

    .line 558
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->b:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/InputStream;J)J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 732
    move-wide v2, v4

    .line 734
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 735
    sub-long v6, p1, v2

    .line 737
    invoke-static {p0, v6, v7}, Lcom/google/common/io/ByteStreams;->b(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 739
    cmp-long v8, v0, v4

    if-nez v8, :cond_1

    .line 742
    sget-object v0, Lcom/google/common/io/ByteStreams;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 743
    sget-object v1, Lcom/google/common/io/ByteStreams;->a:[B

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 752
    :cond_0
    return-wide v2

    .line 749
    :cond_1
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 750
    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;I)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 180
    new-array v0, p1, [B

    move v1, p1

    .line 183
    :goto_0
    if-lez v1, :cond_2

    .line 184
    sub-int v2, p1, v1

    .line 185
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 186
    if-ne v3, v4, :cond_1

    .line 189
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 208
    :cond_0
    :goto_1
    return-object v0

    .line 191
    :cond_1
    sub-int/2addr v1, v3

    .line 192
    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 196
    if-eq v1, v4, :cond_0

    .line 201
    new-instance v2, Lcom/google/common/io/ByteStreams$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/io/ByteStreams$c;-><init>(Lcom/google/common/io/ByteStreams$1;)V

    .line 202
    invoke-virtual {v2, v1}, Lcom/google/common/io/ByteStreams$c;->write(I)V

    .line 203
    invoke-static {p0, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 205
    array-length v1, v0

    invoke-virtual {v2}, Lcom/google/common/io/ByteStreams$c;->size()I

    move-result v3

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 206
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/google/common/io/ByteStreams$c;->a([BI)V

    move-object v0, v1

    .line 208
    goto :goto_1
.end method

.method private static b(Ljava/io/InputStream;J)J
    .locals 3

    .prologue
    .line 763
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 764
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 108
    const-wide/16 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 111
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 117
    return-wide v0

    .line 114
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 115
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 116
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 131
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    move-object v1, p0

    .line 134
    check-cast v1, Ljava/nio/channels/FileChannel;

    .line 135
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    move-wide v2, v8

    .line 139
    :cond_0
    const-wide/32 v4, 0x80000

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    .line 140
    add-long/2addr v2, v4

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 142
    cmp-long v0, v4, v10

    if-gtz v0, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 143
    sub-long v0, v2, v8

    .line 155
    :cond_1
    return-wide v0

    .line 146
    :cond_2
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-wide v0, v10

    .line 148
    :goto_0
    invoke-interface {p0, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 149
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 150
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-interface {p1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 597
    new-instance v0, Lcom/google/common/io/ByteStreams$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$d;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2

    .prologue
    .line 255
    new-instance v1, Lcom/google/common/io/ByteStreams$a;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Lcom/google/common/io/ByteStreams$a;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v1
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2

    .prologue
    .line 241
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 242
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 5

    .prologue
    .line 404
    if-gez p0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid size: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 2

    .prologue
    .line 426
    new-instance v1, Lcom/google/common/io/ByteStreams$b;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Lcom/google/common/io/ByteStreams$b;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/google/common/io/ByteStreams;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    .line 815
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    if-gez p3, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    const/4 v0, 0x0

    .line 821
    :goto_0
    if-ge v0, p3, :cond_1

    .line 822
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 823
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 828
    :cond_1
    return v0

    .line 826
    :cond_2
    add-int/2addr v0, v1

    .line 827
    goto :goto_0
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 784
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 785
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2

    .prologue
    .line 679
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 680
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4

    .prologue
    .line 698
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 699
    if-eq v0, p3, :cond_0

    .line 700
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x51

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes expected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_0
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5

    .prologue
    .line 718
    invoke-static {p0, p1, p2}, Lcom/google/common/io/ByteStreams;->a(Ljava/io/InputStream;J)J

    move-result-wide v0

    .line 719
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 720
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "reached end of stream after skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_0
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 169
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
