.class Lorg/eclipse/jetty/http/HttpFields$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpFields$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 239
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->c()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v0, v1

    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    sget-object v3, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 250
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 275
    :goto_1
    return-wide v0

    .line 252
    :catch_0
    move-exception v0

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, " GMT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 262
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 266
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$b;->a:[Ljava/text/SimpleDateFormat;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 267
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 275
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1
.end method
