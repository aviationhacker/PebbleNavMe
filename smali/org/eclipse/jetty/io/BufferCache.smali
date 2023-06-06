.class public Lorg/eclipse/jetty/io/BufferCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lorg/eclipse/jetty/util/StringMap;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->a:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/StringMap;-><init>(Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    .line 127
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    :cond_1
    return-object v0
.end method

.method public get(I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1

    .prologue
    .line 57
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    return-object v0
.end method

.method public getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/util/StringMap;->getBestEntry([BII)Ljava/util/Map$Entry;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrdinal(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 114
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    goto :goto_0
.end method

.method public getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2

    .prologue
    .line 119
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;-><init>(Ljava/lang/String;I)V

    .line 103
    :cond_0
    return-object v0
.end method

.method public lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    instance-of v0, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object p1

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 80
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asArray()[B

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 85
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE[bufferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stringMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->b:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/BufferCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
