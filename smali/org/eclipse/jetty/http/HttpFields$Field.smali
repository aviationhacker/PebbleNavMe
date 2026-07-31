.class public final Lorg/eclipse/jetty/http/HttpFields$Field;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private a:Lorg/eclipse/jetty/io/Buffer;

.field private b:Lorg/eclipse/jetty/io/Buffer;

.field private c:Lorg/eclipse/jetty/http/HttpFields$Field;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    .line 1296
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    .line 1297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->c:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1298
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0

    .prologue
    .line 1286
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->c:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object p1
.end method

.method static synthetic a(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method static synthetic c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->c:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .prologue
    .line 1391
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameOrdinal()I
    .locals 2

    .prologue
    .line 1367
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getValueOrdinal()I
    .locals 2

    .prologue
    .line 1385
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public putTo(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 1303
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    instance-of v0, v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 1304
    :goto_0
    if-ltz v0, :cond_3

    .line 1305
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 1325
    :cond_0
    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 1326
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 1328
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    instance-of v0, v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    check-cast v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v0

    .line 1329
    :goto_1
    if-ltz v0, :cond_5

    .line 1330
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 1349
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->putCRLF(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1350
    return-void

    :cond_2
    move v0, v1

    .line 1303
    goto :goto_0

    .line 1308
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 1309
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    .line 1310
    :goto_2
    if-ge v0, v3, :cond_0

    .line 1312
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->a:Lorg/eclipse/jetty/io/Buffer;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 1313
    sparse-switch v0, :sswitch_data_0

    .line 1320
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    move v0, v2

    .line 1322
    goto :goto_2

    :sswitch_0
    move v0, v2

    .line 1318
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1328
    goto :goto_1

    .line 1333
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 1334
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v2

    .line 1335
    :goto_3
    if-ge v0, v2, :cond_1

    .line 1337
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 1338
    packed-switch v0, :pswitch_data_0

    .line 1344
    :pswitch_0
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    move v0, v1

    .line 1346
    goto :goto_3

    :pswitch_1
    move v0, v1

    .line 1342
    goto :goto_3

    .line 1313
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 1338
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$Field;->c:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
