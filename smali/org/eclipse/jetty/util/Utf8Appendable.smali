.class public abstract Lorg/eclipse/jetty/util/Utf8Appendable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;
    }
.end annotation


# static fields
.field protected static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final REPLACEMENT:C = '\ufffd'

.field private static final a:[B

.field private static final b:[B


# instance fields
.field protected final _appendable:Ljava/lang/Appendable;

.field protected _state:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/util/Utf8Appendable;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 60
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:[B

    .line 74
    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    .line 74
    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    .line 90
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append([BII)V
    .locals 2

    .prologue
    .line 115
    add-int v0, p2, p3

    .line 116
    :goto_0
    if-ge p2, v0, :cond_0

    .line 117
    :try_start_0
    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_0
    return-void
.end method

.method public append([BIII)Z
    .locals 2

    .prologue
    .line 129
    add-int v0, p2, p3

    .line 130
    :goto_0
    if-ge p2, v0, :cond_1

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->length()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 136
    :goto_1
    return v0

    .line 134
    :cond_0
    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected appendByte(B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 147
    if-lez p1, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    and-int/lit16 v0, p1, 0xff

    .line 154
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->a:[B

    aget-byte v2, v2, v0

    .line 155
    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v3, :cond_2

    const/16 v3, 0xff

    shr-int/2addr v3, v2

    and-int/2addr v0, v3

    :goto_1
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 156
    sget-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->b:[B

    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    .line 158
    sparse-switch v0, :sswitch_data_0

    .line 181
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    goto :goto_0

    .line 155
    :cond_2
    and-int/lit8 v0, v0, 0x3f

    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    goto :goto_1

    .line 161
    :sswitch_0
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 162
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    const v2, 0xd800

    if-ge v0, v2, :cond_3

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 168
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_0

    aget-char v1, v2, v0

    .line 169
    iget-object v4, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byte "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    div-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 176
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 177
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v2, 0xfffd

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 178
    new-instance v1, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method protected checkState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 205
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v1, 0xfffd

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    const-string v1, "incomplete UTF8 sequence"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 216
    :cond_0
    return-void
.end method

.method public isUtf8SequenceComplete()Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract length()I
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 97
    return-void
.end method

.method public toReplacedString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->c:I

    .line 223
    iput v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v1, 0xfffd

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    new-instance v0, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    const-string v1, "incomplete UTF8 sequence"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    .line 233
    sget-object v1, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    sget-object v1, Lorg/eclipse/jetty/util/Utf8Appendable;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
