.class public abstract Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p1, :cond_2

    .line 105
    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, v2, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v3

    move v0, v2

    .line 83
    :goto_0
    if-ge v0, v3, :cond_1

    .line 86
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    .line 88
    if-nez v4, :cond_3

    .line 89
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write([C)V

    .line 83
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 93
    :goto_2
    if-ge v1, v4, :cond_5

    .line 94
    add-int/lit8 v5, v3, -0x2

    if-ge v0, v5, :cond_4

    .line 95
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 93
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 102
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final varargs with([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 116
    aput-object p0, v0, v3

    .line 117
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    new-instance v1, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    return-object v1
.end method
