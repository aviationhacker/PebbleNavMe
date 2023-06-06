.class public Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private b:Z

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "java.lang.Enum"

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "valueOf"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->b:Z

    .line 63
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "!Enums"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->b:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v0, "class"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "value"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 78
    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->b:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 86
    const-string v0, "value"

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
