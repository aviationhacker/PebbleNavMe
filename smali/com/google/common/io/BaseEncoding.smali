.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$d;,
        Lcom/google/common/io/BaseEncoding$c;,
        Lcom/google/common/io/BaseEncoding$b;,
        Lcom/google/common/io/BaseEncoding$e;,
        Lcom/google/common/io/BaseEncoding$a;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/io/BaseEncoding;

.field private static final b:Lcom/google/common/io/BaseEncoding;

.field private static final c:Lcom/google/common/io/BaseEncoding;

.field private static final d:Lcom/google/common/io/BaseEncoding;

.field private static final e:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 317
    new-instance v0, Lcom/google/common/io/BaseEncoding$c;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 318
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding;

    .line 337
    new-instance v0, Lcom/google/common/io/BaseEncoding$c;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 338
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding;

    .line 358
    new-instance v0, Lcom/google/common/io/BaseEncoding$e;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 359
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding;

    .line 378
    new-instance v0, Lcom/google/common/io/BaseEncoding$e;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 379
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    .line 397
    new-instance v0, Lcom/google/common/io/BaseEncoding$b;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->e:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)Ljava/io/Reader;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader"
    .end annotation

    .prologue
    .line 899
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    new-instance v0, Lcom/google/common/io/BaseEncoding$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$3;-><init>(Ljava/io/Reader;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method static a(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer"
    .end annotation

    .prologue
    .line 957
    .line 958
    invoke-static {p0, p1, p2}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object v0

    .line 959
    new-instance v1, Lcom/google/common/io/BaseEncoding$5;

    invoke-direct {v1, v0, p0}, Lcom/google/common/io/BaseEncoding$5;-><init>(Ljava/lang/Appendable;Ljava/io/Writer;)V

    return-object v1
.end method

.method static a(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 925
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 928
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/io/BaseEncoding$4;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    return-object v0

    .line 927
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    array-length v0, p0

    if-ne p1, v0, :cond_0

    .line 197
    :goto_0
    return-object p0

    .line 195
    :cond_0
    new-array v0, p1, [B

    .line 196
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 197
    goto :goto_0
.end method

.method public static base16()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/google/common/io/BaseEncoding;->e:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32Hex()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/google/common/io/BaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64Url()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method


# virtual methods
.method abstract a(I)I
.end method

.method abstract a([BLjava/lang/CharSequence;)I
.end method

.method abstract a()Lcom/google/common/base/CharMatcher;
.end method

.method abstract a(Ljava/lang/Appendable;[BII)V
.end method

.method final a(Ljava/lang/CharSequence;)[B
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/BaseEncoding;->b(I)I

    move-result v1

    new-array v1, v1, [B

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/BaseEncoding;->a([BLjava/lang/CharSequence;)I

    move-result v0

    .line 227
    invoke-static {v1, v0}, Lcom/google/common/io/BaseEncoding;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)I
.end method

.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 2

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/CharSequence;)[B
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final decodingSource(Lcom/google/common/io/CharSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSource,CharSource"
    .end annotation

    .prologue
    .line 244
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v0, Lcom/google/common/io/BaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSource;)V

    return-object v0
.end method

.method public abstract decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSink,CharSink"
    .end annotation

    .prologue
    .line 180
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lcom/google/common/io/BaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V

    return-object v0
.end method

.method public abstract encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation
.end method

.method public abstract lowerCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract omitPadding()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract upperCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method
