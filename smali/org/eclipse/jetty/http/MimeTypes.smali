.class public Lorg/eclipse/jetty/http/MimeTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CACHE:Lorg/eclipse/jetty/io/BufferCache;

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final MESSAGE_HTTP:Ljava/lang/String; = "message/http"

.field public static final MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final MULTIPART_BYTERANGES:Ljava/lang/String; = "multipart/byteranges"

.field public static final MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_8859_1:Ljava/lang/String; = "text/html;charset=ISO-8859-1"

.field public static final TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_HTML_UTF_8:Ljava/lang/String; = "text/html;charset=UTF-8"

.field public static final TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_JSON:Ljava/lang/String; = "text/json"

.field public static final TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_JSON_UTF_8:Ljava/lang/String; = "text/json;charset=UTF-8"

.field public static final TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_8859_1:Ljava/lang/String; = "text/plain;charset=ISO-8859-1"

.field public static final TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN_UTF_8:Ljava/lang/String; = "text/plain;charset=UTF-8"

.field public static final TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_8859_1:Ljava/lang/String; = "text/xml;charset=ISO-8859-1"

.field public static final TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML_UTF_8:Ljava/lang/String; = "text/xml;charset=UTF-8"

.field public static final TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static b:I

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;


# instance fields
.field private e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 42
    const-class v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 91
    const/16 v0, 0xf

    sput v0, Lorg/eclipse/jetty/http/MimeTypes;->b:I

    .line 93
    new-instance v0, Lorg/eclipse/jetty/io/BufferCache;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    .line 96
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "application/x-www-form-urlencoded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 97
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "message/http"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 98
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "multipart/byteranges"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 100
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 101
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 102
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 103
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 105
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html;charset=ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 106
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain;charset=ISO-8859-1"

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 107
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml;charset=ISO-8859-1"

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 109
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html;charset=UTF-8"

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 110
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain;charset=UTF-8"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 111
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml;charset=UTF-8"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 112
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json;charset=UTF-8"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 114
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 115
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 116
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml; charset=ISO-8859-1"

    invoke-virtual {v0, v1, v6}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 118
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/html; charset=UTF-8"

    invoke-virtual {v0, v1, v7}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 119
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/plain; charset=UTF-8"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 120
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/xml; charset=UTF-8"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 121
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v1, "text/json; charset=UTF-8"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->c:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/MimeTypes;->d:Ljava/util/Map;

    .line 132
    :try_start_0
    const-string v0, "org/eclipse/jetty/http/mime"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 134
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->c:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lorg/eclipse/jetty/http/MimeTypes;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 149
    :cond_0
    :try_start_1
    const-string v0, "org/eclipse/jetty/http/encoding"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 151
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/http/MimeTypes;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 154
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    .line 159
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 164
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 165
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 166
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 167
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 168
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 169
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 170
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 171
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "ISO_8859_1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 172
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "iso-8859-1"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 174
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 175
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 176
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 177
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 178
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 179
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 180
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 181
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 182
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 183
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 184
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 185
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 186
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 187
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "UTF8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 188
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 189
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v1, "utf-8"

    sget-object v2, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    .line 286
    const-class v1, Lorg/eclipse/jetty/http/MimeTypes;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sget v2, Lorg/eclipse/jetty/http/MimeTypes;->b:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/http/MimeTypes;->b:I

    invoke-virtual {v0, p0, v2}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    :cond_0
    monitor-exit v1

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/16 v11, 0x22

    const/16 v10, 0x20

    const/16 v6, 0xa

    const/4 v1, 0x0

    .line 295
    instance-of v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 297
    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    .line 313
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v7

    move v0, v1

    move v3, v1

    move v5, v1

    .line 317
    :goto_0
    if-ge v4, v7, :cond_f

    .line 319
    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v8

    .line 321
    if-eqz v0, :cond_2

    if-eq v5, v6, :cond_2

    .line 323
    if-ne v11, v8, :cond_1

    move v0, v1

    .line 317
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 302
    :pswitch_0
    const-string v0, "ISO-8859-1"

    .line 374
    :goto_2
    return-object v0

    .line 308
    :pswitch_1
    const-string v0, "UTF-8"

    goto :goto_2

    .line 328
    :cond_2
    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 331
    :pswitch_2
    if-ne v11, v8, :cond_3

    move v0, v2

    .line 334
    goto :goto_1

    .line 336
    :cond_3
    const/16 v9, 0x3b

    if-ne v9, v8, :cond_1

    move v5, v2

    .line 337
    goto :goto_1

    .line 340
    :pswitch_3
    const/16 v9, 0x63

    if-ne v9, v8, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    if-eq v10, v8, :cond_1

    move v5, v1

    goto :goto_1

    .line 341
    :pswitch_4
    const/16 v5, 0x68

    if-ne v5, v8, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_5
    move v5, v1

    goto :goto_1

    .line 342
    :pswitch_5
    const/16 v5, 0x61

    if-ne v5, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_1

    .line 343
    :pswitch_6
    const/16 v5, 0x72

    if-ne v5, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    move v5, v1

    goto :goto_1

    .line 344
    :pswitch_7
    const/16 v5, 0x73

    if-ne v5, v8, :cond_8

    const/4 v5, 0x6

    goto :goto_1

    :cond_8
    move v5, v1

    goto :goto_1

    .line 345
    :pswitch_8
    const/16 v5, 0x65

    if-ne v5, v8, :cond_9

    const/4 v5, 0x7

    goto :goto_1

    :cond_9
    move v5, v1

    goto :goto_1

    .line 346
    :pswitch_9
    const/16 v5, 0x74

    if-ne v5, v8, :cond_a

    const/16 v5, 0x8

    goto :goto_1

    :cond_a
    move v5, v1

    goto :goto_1

    .line 348
    :pswitch_a
    const/16 v9, 0x3d

    if-ne v9, v8, :cond_b

    const/16 v5, 0x9

    goto :goto_1

    :cond_b
    if-eq v10, v8, :cond_1

    move v5, v1

    goto :goto_1

    .line 351
    :pswitch_b
    if-eq v10, v8, :cond_1

    .line 353
    if-ne v11, v8, :cond_c

    .line 356
    add-int/lit8 v0, v4, 0x1

    move v3, v0

    move v5, v6

    move v0, v2

    .line 358
    goto :goto_1

    :cond_c
    move v3, v4

    move v5, v6

    .line 362
    goto :goto_1

    .line 365
    :pswitch_c
    if-nez v0, :cond_d

    const/16 v9, 0x3b

    if-eq v9, v8, :cond_e

    if-eq v10, v8, :cond_e

    :cond_d
    if-eqz v0, :cond_1

    if-ne v11, v8, :cond_1

    .line 367
    :cond_e
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int v1, v4, v3

    invoke-interface {p0, v3, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 371
    :cond_f
    if-ne v5, v6, :cond_10

    .line 372
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int v1, v4, v3

    invoke-interface {p0, v3, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 374
    :cond_10
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    .line 297
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    if-eqz p1, :cond_1

    .line 243
    const/4 v1, -0x1

    .line 244
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 246
    const-string v2, "."

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 248
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 259
    :cond_1
    if-nez v0, :cond_3

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 263
    :cond_2
    if-nez v0, :cond_3

    .line 264
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->c:Ljava/util/Map;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 267
    :cond_3
    return-object v0

    .line 251
    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 254
    :cond_5
    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lorg/eclipse/jetty/http/MimeTypes;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public declared-synchronized getMimeMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMimeMap(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 223
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/http/MimeTypes;->a(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/http/MimeTypes;->e:Ljava/util/Map;

    goto :goto_0
.end method
