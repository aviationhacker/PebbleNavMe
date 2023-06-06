.class public Lorg/eclipse/jetty/util/IPAddressMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/IPAddressMap$b;,
        Lorg/eclipse/jetty/util/IPAddressMap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TTYPE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    .line 65
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTYPE;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 157
    :cond_0
    return-object v2

    .line 149
    :cond_1
    const/4 v2, 0x0

    .line 150
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/IPAddressMap$a;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/IPAddressMap$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 156
    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getMatch(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TTYPE;>;"
        }
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_1

    .line 125
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/IPAddressMap$a;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/IPAddressMap$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TTYPE;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getMatch(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/IPAddressMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTYPE;)TTYPE;"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IP address pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lorg/eclipse/jetty/util/IPAddressMap;->a:Ljava/util/HashMap;

    new-instance v2, Lorg/eclipse/jetty/util/IPAddressMap$a;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/util/IPAddressMap$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
