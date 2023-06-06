.class public Lorg/eclipse/jetty/util/ajax/JSON;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSON$Literal;,
        Lorg/eclipse/jetty/util/ajax/JSON$Generator;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertor;,
        Lorg/eclipse/jetty/util/ajax/JSON$Convertible;,
        Lorg/eclipse/jetty/util/ajax/JSON$Output;,
        Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$StringSource;,
        Lorg/eclipse/jetty/util/ajax/JSON$Source;,
        Lorg/eclipse/jetty/util/ajax/JSON$a;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

.field static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSON$Convertor;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 93
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSON;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    .line 96
    const/16 v0, 0x400

    iput v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->c:I

    .line 100
    return-void
.end method

.method protected static complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 4

    .prologue
    .line 1278
    const/4 v0, 0x0

    .line 1279
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1281
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v2

    .line 1282
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_0

    .line 1283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while seeking  \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 1284
    goto :goto_0

    .line 1286
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1287
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_2
    return-void
.end method

.method public static getDefault()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-static {p0}, Lorg/eclipse/jetty/util/IO;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$ReaderSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static registerConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V

    .line 132
    return-void
.end method

.method public static setDefault(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0, p0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addConvertor(Ljava/lang/Class;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method public addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    return-void
.end method

.method public append(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 282
    :try_start_0
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 339
    :goto_0
    return-void

    .line 285
    :cond_0
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 287
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 337
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :cond_1
    :try_start_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 291
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 295
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    goto :goto_0

    .line 297
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_5
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 307
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_6
    instance-of v0, p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    if-eqz v0, :cond_7

    .line 311
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    goto :goto_0

    .line 313
    :cond_7
    instance-of v0, p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    if-eqz v0, :cond_8

    .line 315
    check-cast p2, Lorg/eclipse/jetty/util/ajax/JSON$Generator;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V

    goto :goto_0

    .line 320
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_9
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_a

    .line 327
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    goto :goto_0

    .line 331
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 488
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 508
    :goto_0
    return-void

    .line 492
    :cond_0
    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 493
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 495
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 497
    if-eqz v0, :cond_1

    .line 498
    const/16 v2, 0x2c

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 499
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_2
    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 506
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V
    .locals 3

    .prologue
    .line 450
    if-nez p2, :cond_0

    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 474
    :goto_0
    return-void

    .line 456
    :cond_0
    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 457
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 458
    const/4 v0, 0x1

    .line 459
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    if-nez v0, :cond_1

    .line 462
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 464
    :cond_1
    const/4 v0, 0x0

    .line 465
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :cond_2
    const/16 v0, 0x5d

    :try_start_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public appendArray(Ljava/lang/StringBuffer;Ljava/util/Collection;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendArray(Ljava/lang/Appendable;Ljava/util/Collection;)V

    .line 444
    return-void
.end method

.method public appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 520
    if-nez p2, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 531
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 525
    :cond_1
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public appendBoolean(Ljava/lang/StringBuffer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 514
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jetty/util/ajax/JSON$a;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$1;)V

    .line 389
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->toJSON(Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 390
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ajax/JSON$a;->a()V

    .line 391
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON$1;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    .line 378
    return-void
.end method

.method public appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0

    .prologue
    .line 401
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    .line 402
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertible;)V

    .line 384
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/ajax/JSON;->appendJSON(Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public appendJSON(Ljava/lang/StringBuffer;Lorg/eclipse/jetty/util/ajax/JSON$Generator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    invoke-interface {p2, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Generator;->addJSON(Ljava/lang/Appendable;)V

    .line 397
    return-void
.end method

.method public appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 414
    if-nez p2, :cond_0

    .line 416
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 438
    :goto_0
    return-void

    .line 420
    :cond_0
    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 421
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 422
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 426
    const/16 v2, 0x3a

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 432
    :cond_2
    const/16 v0, 0x7d

    :try_start_1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public appendMap(Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendMap(Ljava/lang/Appendable;Ljava/util/Map;)V

    .line 408
    return-void
.end method

.method public appendNull(Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 351
    :try_start_0
    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendNull(Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 345
    return-void
.end method

.method public appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 554
    :goto_0
    return-void

    .line 548
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 552
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public appendNumber(Ljava/lang/StringBuffer;Ljava/lang/Number;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 537
    return-void
.end method

.method public appendString(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 564
    if-nez p2, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNull(Ljava/lang/Appendable;)V

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendString(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method protected contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0

    .prologue
    .line 597
    return-object p0
.end method

.method protected contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;
    .locals 0

    .prologue
    .line 592
    return-object p0
.end method

.method protected convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 602
    if-eqz p1, :cond_0

    const-class v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;

    .line 607
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertible;->fromJSON(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-object v0

    .line 610
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 616
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_1

    .line 619
    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 621
    goto :goto_0
.end method

.method public fromJSON(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 6

    .prologue
    .line 650
    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .line 652
    if-nez v0, :cond_3

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v1, :cond_3

    .line 653
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertor(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    move-object v2, v0

    move-object v1, p1

    .line 655
    :goto_0
    if-nez v2, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq v1, v0, :cond_2

    .line 657
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 658
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v2

    move v2, v5

    .line 659
    :goto_1
    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move v2, v3

    goto :goto_1

    .line 661
    :cond_0
    if-nez v0, :cond_1

    .line 663
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    :cond_1
    move-object v2, v0

    .line 666
    goto :goto_0

    .line 667
    :cond_2
    return-object v2

    :cond_3
    move-object v2, v0

    move-object v1, p1

    goto :goto_0
.end method

.method public getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    .line 693
    if-nez v0, :cond_0

    sget-object v1, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    if-eq p0, v1, :cond_0

    .line 694
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->DEFAULT:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v0

    .line 695
    :cond_0
    return-object v0
.end method

.method public getStringBufferSize()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON;->c:I

    return v0
.end method

.method protected handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 886
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 587
    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 787
    move v0, v1

    .line 789
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 791
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v6

    .line 794
    if-ne v0, v4, :cond_1

    .line 796
    sparse-switch v6, :sswitch_data_0

    .line 878
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 799
    :sswitch_0
    const/4 v0, -0x1

    .line 800
    goto :goto_1

    :sswitch_1
    move v0, v2

    .line 802
    goto :goto_1

    .line 806
    :cond_1
    if-le v0, v4, :cond_3

    .line 808
    sparse-switch v6, :sswitch_data_1

    move v0, v2

    .line 820
    goto :goto_1

    :sswitch_2
    move v0, v3

    .line 812
    goto :goto_1

    .line 814
    :sswitch_3
    if-ne v0, v3, :cond_2

    move v0, v1

    .line 815
    goto :goto_1

    :cond_2
    move v0, v2

    .line 818
    goto :goto_1

    .line 824
    :cond_3
    if-gez v0, :cond_4

    .line 826
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 831
    goto :goto_1

    .line 839
    :cond_4
    sparse-switch v6, :sswitch_data_2

    .line 871
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 872
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v0

    .line 881
    :goto_2
    return-object v0

    .line 842
    :sswitch_4
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 844
    :sswitch_5
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 846
    :sswitch_6
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 848
    :sswitch_7
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    .line 851
    :sswitch_8
    const-string v0, "null"

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 852
    goto :goto_2

    .line 854
    :sswitch_9
    const-string v0, "true"

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 855
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 857
    :sswitch_a
    const-string v0, "false"

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 858
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 860
    :sswitch_b
    const-string v0, "undefined"

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 861
    goto :goto_2

    .line 863
    :sswitch_c
    const-string v0, "NaN"

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->complete(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)V

    move-object v0, v5

    .line 864
    goto :goto_2

    :sswitch_d
    move v0, v4

    .line 868
    goto :goto_1

    .line 873
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 875
    invoke-virtual {p0, p1, v6}, Lorg/eclipse/jetty/util/ajax/JSON;->handleUnknown(Lorg/eclipse/jetty/util/ajax/JSON$Source;C)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 881
    goto :goto_2

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 808
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 826
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 839
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_6
        0x2d -> :sswitch_7
        0x2f -> :sswitch_d
        0x4e -> :sswitch_c
        0x5b -> :sswitch_5
        0x66 -> :sswitch_a
        0x6e -> :sswitch_8
        0x74 -> :sswitch_9
        0x75 -> :sswitch_b
        0x7b -> :sswitch_4
    .end sparse-switch
.end method

.method public parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;Z)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 700
    .line 701
    if-nez p2, :cond_1

    .line 702
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    .line 782
    :cond_0
    return-object v0

    .line 706
    :cond_1
    const/4 v0, 0x0

    move v1, v2

    move v3, v4

    .line 707
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 709
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v7

    .line 712
    if-ne v3, v2, :cond_3

    .line 714
    sparse-switch v7, :sswitch_data_0

    .line 779
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 717
    :sswitch_0
    const/4 v3, -0x1

    .line 718
    goto :goto_1

    .line 721
    :sswitch_1
    if-ne v1, v2, :cond_9

    move v1, v5

    move v3, v4

    .line 724
    goto :goto_1

    .line 729
    :cond_3
    if-le v3, v2, :cond_5

    .line 731
    sparse-switch v7, :sswitch_data_1

    move v3, v5

    .line 747
    goto :goto_1

    :sswitch_2
    move v3, v6

    .line 735
    goto :goto_1

    .line 737
    :sswitch_3
    if-ne v3, v6, :cond_4

    .line 740
    if-eq v1, v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v5

    .line 745
    goto :goto_1

    .line 751
    :cond_5
    if-gez v3, :cond_6

    .line 753
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    move v3, v4

    .line 757
    goto :goto_1

    .line 765
    :cond_6
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 767
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_7

    move v3, v2

    .line 768
    goto :goto_1

    .line 769
    :cond_7
    const/16 v8, 0x2a

    if-ne v7, v8, :cond_8

    move v3, v6

    .line 770
    goto :goto_1

    .line 771
    :cond_8
    if-nez v0, :cond_2

    .line 773
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v3, v5

    goto :goto_1

    .line 714
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch

    .line 731
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch

    .line 753
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected parseArray(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 948
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_0

    .line 949
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    .line 956
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 958
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v7

    .line 959
    sparse-switch v7, :sswitch_data_0

    .line 983
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 984
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 962
    :sswitch_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 963
    packed-switch v6, :pswitch_data_0

    .line 972
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 966
    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 968
    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 969
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 976
    :sswitch_1
    if-eqz v0, :cond_1

    .line 977
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 979
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move v0, v1

    .line 980
    goto :goto_0

    .line 988
    :cond_2
    add-int/lit8 v7, v6, 0x1

    if-nez v6, :cond_3

    .line 989
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move v6, v7

    move v0, v2

    goto :goto_0

    .line 990
    :cond_3
    if-nez v5, :cond_4

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 993
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v3

    .line 995
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v5, v0

    move v6, v7

    move v0, v2

    .line 996
    goto :goto_0

    .line 1000
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextForArray()Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v0

    .line 1001
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move-object v3, v4

    move v6, v7

    .line 1002
    goto :goto_0

    .line 1009
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected end of array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch

    .line 963
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseNumber(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Number;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1160
    const/4 v0, 0x0

    .line 1162
    const/4 v5, 0x0

    move v4, v0

    move-wide v0, v2

    .line 1164
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1166
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v6

    .line 1167
    sparse-switch v6, :sswitch_data_0

    move-object v2, v5

    .line 1207
    :goto_1
    if-nez v2, :cond_3

    .line 1208
    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1238
    :goto_2
    return-object v0

    .line 1179
    :sswitch_0
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    add-int/lit8 v6, v6, -0x30

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 1180
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1185
    :sswitch_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bad number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_1
    const/4 v4, 0x1

    .line 1188
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1194
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1195
    if-eqz v4, :cond_2

    .line 1196
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1197
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_1

    .line 1230
    :sswitch_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1231
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 1210
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1212
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1213
    sparse-switch v0, :sswitch_data_1

    .line 1238
    :cond_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v5

    goto :goto_1

    .line 1167
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 1213
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x2e -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method protected parseObject(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v3, 0x7d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 891
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 893
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->newMap()Ljava/util/Map;

    move-result-object v1

    .line 895
    const-string v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v0

    .line 897
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    if-ne v0, v3, :cond_2

    .line 901
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 920
    :cond_1
    const-string v0, "x-class"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    if-eqz v0, :cond_4

    .line 923
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 924
    if-eqz v2, :cond_3

    .line 925
    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 943
    :goto_1
    return-object v0

    .line 905
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;

    move-result-object v0

    .line 906
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V

    .line 907
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    .line 909
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->contextFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/Object;

    move-result-object v2

    .line 910
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v0, ",}"

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    .line 913
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    .line 914
    if-eq v0, v3, :cond_1

    .line 917
    const-string v0, "\"}"

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C

    move-result v0

    goto :goto_0

    .line 926
    :cond_3
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "No Convertor for x-class \'{}\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    :cond_4
    const-string v0, "class"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 930
    if-eqz v0, :cond_5

    .line 934
    :try_start_0
    const-class v2, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 935
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->convertTo(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 937
    :catch_0
    move-exception v2

    .line 939
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "No Class for \'{}\'"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v0, v1

    .line 943
    goto :goto_1
.end method

.method protected parseString(Lorg/eclipse/jetty/util/ajax/JSON$Source;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v4, 0x1

    const/16 v9, 0x5c

    const/16 v8, 0x22

    const/4 v1, 0x0

    .line 1014
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v0

    if-eq v0, v8, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1019
    :cond_0
    const/4 v5, 0x0

    .line 1020
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->scratchBuffer()[C

    move-result-object v6

    .line 1022
    if-eqz v6, :cond_6

    move v0, v1

    move v2, v1

    .line 1025
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1027
    array-length v3, v6

    if-lt v0, v3, :cond_1

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1032
    invoke-virtual {v3, v6, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1092
    :goto_1
    if-nez v3, :cond_5

    .line 1093
    invoke-virtual {p0, v6, v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    .line 1155
    :goto_2
    return-object v0

    .line 1036
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v7

    .line 1038
    if-eqz v2, :cond_2

    .line 1041
    sparse-switch v7, :sswitch_data_0

    .line 1073
    add-int/lit8 v2, v0, 0x1

    aput-char v7, v6, v0

    move v0, v2

    :goto_3
    move v2, v1

    goto :goto_0

    .line 1044
    :sswitch_0
    add-int/lit8 v2, v0, 0x1

    aput-char v8, v6, v0

    move v0, v2

    .line 1045
    goto :goto_3

    .line 1047
    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    aput-char v9, v6, v0

    move v0, v2

    .line 1048
    goto :goto_3

    .line 1050
    :sswitch_2
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2f

    aput-char v3, v6, v0

    move v0, v2

    .line 1051
    goto :goto_3

    .line 1053
    :sswitch_3
    add-int/lit8 v2, v0, 0x1

    aput-char v10, v6, v0

    move v0, v2

    .line 1054
    goto :goto_3

    .line 1056
    :sswitch_4
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xc

    aput-char v3, v6, v0

    move v0, v2

    .line 1057
    goto :goto_3

    .line 1059
    :sswitch_5
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    aput-char v3, v6, v0

    move v0, v2

    .line 1060
    goto :goto_3

    .line 1062
    :sswitch_6
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xd

    aput-char v3, v6, v0

    move v0, v2

    .line 1063
    goto :goto_3

    .line 1065
    :sswitch_7
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x9

    aput-char v3, v6, v0

    move v0, v2

    .line 1066
    goto :goto_3

    .line 1068
    :sswitch_8
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v2, v3

    int-to-char v3, v2

    .line 1070
    add-int/lit8 v2, v0, 0x1

    aput-char v3, v6, v0

    move v0, v2

    .line 1071
    goto :goto_3

    .line 1076
    :cond_2
    if-ne v7, v9, :cond_3

    move v2, v4

    .line 1078
    goto/16 :goto_0

    .line 1080
    :cond_3
    if-ne v7, v8, :cond_4

    .line 1083
    invoke-virtual {p0, v6, v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->toString([CII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1087
    :cond_4
    add-int/lit8 v3, v0, 0x1

    aput-char v7, v6, v0

    move v0, v3

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    .line 1100
    :goto_4
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1102
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    .line 1104
    if-eqz v2, :cond_7

    .line 1107
    sparse-switch v3, :sswitch_data_1

    .line 1139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    move v2, v1

    goto :goto_4

    .line 1096
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    goto :goto_4

    .line 1110
    :sswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1113
    :sswitch_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1116
    :sswitch_b
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1119
    :sswitch_c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1122
    :sswitch_d
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1125
    :sswitch_e
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1128
    :sswitch_f
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1131
    :sswitch_10
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1134
    :sswitch_11
    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-interface {p1}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 1136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1142
    :cond_7
    if-ne v3, v9, :cond_8

    move v2, v4

    .line 1144
    goto :goto_4

    .line 1146
    :cond_8
    if-ne v3, v8, :cond_a

    .line 1155
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1152
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    move-object v3, v5

    goto/16 :goto_1

    .line 1041
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch

    .line 1107
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_9
        0x2f -> :sswitch_b
        0x5c -> :sswitch_a
        0x62 -> :sswitch_c
        0x66 -> :sswitch_d
        0x6e -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
    .end sparse-switch
.end method

.method protected seekTo(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Source;)C
    .locals 4

    .prologue
    .line 1260
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1262
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1263
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1265
    return v0

    .line 1268
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1269
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' while seeking one of \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1270
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1273
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected seekTo(CLorg/eclipse/jetty/util/ajax/JSON$Source;)V
    .locals 4

    .prologue
    .line 1244
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1246
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->peek()C

    move-result v0

    .line 1247
    if-ne v0, p1, :cond_0

    .line 1248
    return-void

    .line 1250
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while seeking \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1252
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/util/ajax/JSON$Source;->next()C

    goto :goto_0

    .line 1255
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStringBufferSize(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lorg/eclipse/jetty/util/ajax/JSON;->c:I

    .line 119
    return-void
.end method

.method public toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSON;->getStringBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toString([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
