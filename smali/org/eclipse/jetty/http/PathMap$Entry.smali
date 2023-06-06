.class public Lorg/eclipse/jetty/http/PathMap$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/PathMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private transient d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->a:Ljava/lang/Object;

    .line 553
    iput-object p2, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->b:Ljava/lang/Object;

    .line 554
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->c:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getMapped()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 568
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->d:Ljava/lang/String;

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap$Entry;->d:Ljava/lang/String;

    return-object v0
.end method
