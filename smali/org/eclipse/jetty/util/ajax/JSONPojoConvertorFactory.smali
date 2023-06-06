.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# instance fields
.field private final a:Lorg/eclipse/jetty/util/ajax/JSON;

.field private final b:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->b:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    .line 56
    iput-boolean p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->b:Z

    .line 57
    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 85
    .line 86
    const-string v0, "class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 94
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 95
    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->b:Z

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_0
    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    :cond_0
    return-object p1

    .line 98
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 100
    :goto_1
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 64
    if-nez v2, :cond_1

    .line 68
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 69
    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->b:Z

    invoke-direct {v1, v3, v4}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertorFactory;->a:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/eclipse/jetty/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V

    .line 81
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 74
    :goto_1
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSON;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method
