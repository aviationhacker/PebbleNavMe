.class public Lorg/eclipse/jetty/util/TypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CR:I

.field public static LF:I

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 47
    const-class v0, Lorg/eclipse/jetty/util/TypeUtil;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    const/16 v0, 0xd

    sput v0, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    .line 49
    const/16 v0, 0xa

    sput v0, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "void"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean.TYPE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte.TYPE"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Character.TYPE"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Double.TYPE"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Float.TYPE"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer.TYPE"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Long.TYPE"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Short.TYPE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Void.TYPE"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Byte"

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Character"

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Double"

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Float"

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Integer"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Long"

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "Short"

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "string"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "String"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    const-string v1, "java.lang.String"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "void"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "java.lang.Boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "java.lang.Byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Character;

    const-string v2, "java.lang.Character"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    const-string v2, "java.lang.Double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    const-string v2, "java.lang.Float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "java.lang.Integer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    const-string v2, "java.lang.Long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    const-string v2, "java.lang.Short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-string v1, "void"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    const-string v2, "java.lang.String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    .line 132
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 134
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Double;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/Float;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/lang/Long;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Short;

    const-class v3, Ljava/lang/Short;

    const-string v4, "valueOf"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move v2, v1

    .line 566
    :goto_0
    if-eqz v3, :cond_4

    array-length v0, v3

    if-ge v2, v0, :cond_4

    .line 568
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 570
    :cond_1
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    array-length v4, p3

    if-ne v0, v4, :cond_0

    .line 572
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-ne v4, v0, :cond_0

    .line 574
    if-nez p2, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 579
    :cond_2
    :try_start_0
    aget-object v0, v3, v2

    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    .line 572
    goto :goto_2

    .line 581
    :catch_0
    move-exception v0

    .line 583
    sget-object v4, Lorg/eclipse/jetty/util/TypeUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 585
    :catch_1
    move-exception v0

    .line 587
    sget-object v4, Lorg/eclipse/jetty/util/TypeUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 591
    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertHexDigit(B)B
    .locals 3

    .prologue
    .line 360
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    .line 361
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    return v0
.end method

.method public static convertHexDigit(I)I
    .locals 3

    .prologue
    .line 373
    and-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v1, p0, 0x6

    mul-int/lit8 v1, v1, 0x19

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    .line 374
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    return v0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    .line 476
    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    :goto_0
    if-eqz p0, :cond_0

    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 463
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 465
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 466
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_1
    return-object v1
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 547
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    const-string v0, "jar:file:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Ljava/net/URL;

    const/4 v3, 0x4

    const-string v4, "!/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 556
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 558
    goto :goto_0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 329
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 330
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    invoke-static {p0, v0, v3, p1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 329
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    .line 274
    if-gez p2, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    .line 277
    :goto_0
    if-ge v0, p2, :cond_3

    .line 279
    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 281
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v2

    .line 282
    if-ltz v2, :cond_1

    if-lt v2, p3, :cond_2

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_2
    mul-int/2addr v1, p3

    add-int/2addr v1, v2

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_3
    return v1
.end method

.method public static parseInt([BIII)I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 302
    .line 304
    if-gez p2, :cond_0

    .line 305
    array-length v1, p0

    sub-int p2, v1, p1

    :cond_0
    move v1, v0

    move v2, v0

    .line 307
    :goto_0
    if-ge v1, p2, :cond_6

    .line 309
    add-int v0, p1, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v3, v0

    .line 311
    add-int/lit8 v0, v3, -0x30

    .line 312
    if-ltz v0, :cond_1

    if-ge v0, p3, :cond_1

    if-lt v0, v4, :cond_3

    .line 314
    :cond_1
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x41

    .line 315
    if-lt v0, v4, :cond_2

    if-lt v0, p3, :cond_3

    .line 316
    :cond_2
    add-int/lit8 v0, v3, 0xa

    add-int/lit8 v0, v0, -0x61

    .line 318
    :cond_3
    if-ltz v0, :cond_4

    if-lt v0, p3, :cond_5

    .line 319
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_5
    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 322
    :cond_6
    return v2
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 495
    const/16 v0, 0x100

    new-array v0, v0, [B

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 504
    if-gez v5, :cond_2

    .line 524
    :cond_1
    const/4 v0, -0x1

    if-ne v5, v0, :cond_4

    if-nez v2, :cond_4

    .line 525
    const/4 v0, 0x0

    .line 540
    :goto_1
    return-object v0

    .line 506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 509
    if-ne v0, v7, :cond_3

    sget v4, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v5, v4, :cond_0

    .line 512
    :cond_3
    sget v4, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-eq v5, v4, :cond_1

    sget v4, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v5, v4, :cond_1

    .line 515
    array-length v4, v3

    if-lt v2, v4, :cond_6

    .line 518
    array-length v4, v3

    add-int/lit16 v4, v4, 0x100

    new-array v4, v4, [B

    .line 519
    array-length v6, v3

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    :goto_2
    add-int/lit8 v3, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    .line 528
    :cond_4
    sget v0, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-ne v5, v0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lt v0, v7, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 531
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 532
    sget v4, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v0, v4, :cond_5

    .line 533
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 537
    :cond_5
    new-array v0, v2, [B

    .line 538
    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    move-object v4, v3

    goto :goto_2
.end method

.method public static toHex(BLjava/lang/Appendable;)V
    .locals 5

    .prologue
    const/16 v0, 0x37

    const/16 v1, 0x30

    const/16 v4, 0x9

    .line 384
    and-int/lit16 v2, p0, 0xf0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v3, v2, 0xf

    .line 385
    if-le v3, v4, :cond_0

    move v2, v0

    :goto_0
    add-int/2addr v2, v3

    int-to-char v2, v2

    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 386
    and-int/lit8 v2, p0, 0xf

    .line 387
    if-le v2, v4, :cond_1

    :goto_1
    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    return-void

    :cond_0
    move v2, v1

    .line 385
    goto :goto_0

    :cond_1
    move v0, v1

    .line 387
    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toHex(ILjava/lang/Appendable;)V
    .locals 5

    .prologue
    const/16 v1, 0x37

    const/16 v2, 0x30

    const/16 v4, 0x9

    .line 398
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x1c

    and-int/lit8 v3, v0, 0xf

    .line 399
    if-le v3, v4, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 400
    const/high16 v0, 0xf000000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v3, v0, 0xf

    .line 401
    if-le v3, v4, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 402
    const/high16 v0, 0xf00000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x14

    and-int/lit8 v3, v0, 0xf

    .line 403
    if-le v3, v4, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 404
    const/high16 v0, 0xf0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v3, v0, 0xf

    .line 405
    if-le v3, v4, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 406
    const v0, 0xf000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v3, v0, 0xf

    .line 407
    if-le v3, v4, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 408
    and-int/lit16 v0, p0, 0xf00

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v3, v0, 0xf

    .line 409
    if-le v3, v4, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 410
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v3, v0, 0xf

    .line 411
    if-le v3, v4, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 412
    and-int/lit8 v0, p0, 0xf

    .line 413
    if-le v0, v4, :cond_7

    :goto_7
    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 415
    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto :goto_0

    :cond_1
    move v0, v2

    .line 401
    goto :goto_1

    :cond_2
    move v0, v2

    .line 403
    goto :goto_2

    :cond_3
    move v0, v2

    .line 405
    goto :goto_3

    :cond_4
    move v0, v2

    .line 407
    goto :goto_4

    :cond_5
    move v0, v2

    .line 409
    goto :goto_5

    :cond_6
    move v0, v2

    .line 411
    goto :goto_6

    :cond_7
    move v1, v2

    .line 413
    goto :goto_7
.end method

.method public static toHex(JLjava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 422
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    .line 423
    long-to-int v0, p0

    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    .line 424
    return-void
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    new-array v0, v2, [B

    aput-byte p0, v0, v1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x39

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    .line 442
    :goto_0
    add-int v0, p1, p2

    if-ge v1, v0, :cond_2

    .line 444
    aget-byte v0, p0, v1

    and-int/lit16 v3, v0, 0xff

    .line 445
    div-int/lit8 v0, v3, 0x10

    rem-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 446
    if-le v0, v4, :cond_0

    .line 447
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    .line 448
    :cond_0
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    rem-int/lit8 v0, v3, 0x10

    add-int/lit8 v0, v0, 0x30

    .line 450
    if-le v0, v4, :cond_1

    .line 451
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 452
    :cond_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x39

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-byte v0, p0, v1

    .line 340
    and-int/lit16 v4, v0, 0xff

    .line 341
    div-int v0, v4, p1

    rem-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x30

    .line 342
    if-le v0, v5, :cond_0

    .line 343
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 344
    :cond_0
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    rem-int v0, v4, p1

    add-int/lit8 v0, v0, 0x30

    .line 346
    if-le v0, v5, :cond_1

    .line 347
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 348
    :cond_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-object p1

    .line 216
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 217
    if-eqz v0, :cond_1

    .line 218
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    move-object p1, v0

    goto :goto_0

    .line 224
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 225
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Error;

    if-eqz v2, :cond_4

    .line 242
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 235
    :catch_1
    move-exception v0

    :cond_4
    :goto_1
    move-object p1, v1

    .line 245
    goto :goto_0

    .line 231
    :catch_2
    move-exception v0

    goto :goto_1

    .line 227
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    invoke-static {p0}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
