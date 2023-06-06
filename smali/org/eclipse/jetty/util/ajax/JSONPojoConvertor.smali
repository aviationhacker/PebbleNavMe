.class public Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;,
        Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    }
.end annotation


# static fields
.field public static final DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final GETTER_ARG:[Ljava/lang/Object;

.field public static final INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field public static final NULL_ARG:[Ljava/lang/Object;

.field public static final SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected _excluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _fromJSON:Z

.field protected _getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected _pojoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 47
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    .line 378
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 386
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 394
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$3;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 402
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$4;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 410
    new-instance v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$5;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    .line 420
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->SHORT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->INTEGER:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->LONG:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->FLOAT:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->DOUBLE:Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    .line 94
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    .line 95
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    .line 96
    iput-boolean p3, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    .line 97
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Ljava/util/Set;Z)V

    .line 76
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getNumberType(Ljava/lang/Class;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;

    return-object v0
.end method


# virtual methods
.method protected addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method protected addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 181
    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->setProps(Ljava/lang/Object;Ljava/util/Map;)I

    .line 193
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getExcludedCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_setters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    return-object v0
.end method

.method protected includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_excluded:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 113
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 115
    aget-object v3, v2, v0

    .line 116
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    packed-switch v4, :pswitch_data_0

    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 125
    const-string v4, "is"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_1

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_2
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addGetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_1

    .line 127
    :cond_1
    const-string v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 136
    :pswitch_1
    const-string v4, "set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->includeField(Ljava/lang/String;Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->addSetter(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto/16 :goto_1

    .line 146
    :cond_2
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected log(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public setProps(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<**>;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    .line 200
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->getSetter(Ljava/lang/String;)Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;

    move-result-object v5

    .line 204
    if-eqz v5, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_1
    move v2, v0

    .line 219
    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 214
    sget-object v6, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$Setter;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " not set from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v6, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    :cond_0
    move v0, v2

    goto :goto_1

    .line 220
    :cond_1
    return v2
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 8

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_getters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    sget-object v4, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->GETTER_ARG:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 237
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "{} property \'{}\' excluded. (errors)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->_pojoClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method
