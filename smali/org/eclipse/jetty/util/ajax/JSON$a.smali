.class final Lorg/eclipse/jetty/util/ajax/JSON$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Output;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:C

.field final synthetic b:Lorg/eclipse/jetty/util/ajax/JSON;

.field private final c:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 1296
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    const/16 v0, 0x7b

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    .line 1297
    iput-object p2, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    .line 1298
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;Lorg/eclipse/jetty/util/ajax/JSON$1;)V
    .locals 0

    .prologue
    .line 1290
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/ajax/JSON$a;-><init>(Lorg/eclipse/jetty/util/ajax/JSON;Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1304
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1305
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const-string v1, "{}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const-string v1, "}"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1311
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1317
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1320
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    .line 1321
    return-void
.end method

.method public add(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 1362
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1372
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1365
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1367
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1368
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1374
    return-void
.end method

.method public add(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 1380
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1381
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1382
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1383
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1385
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->appendNumber(Ljava/lang/Appendable;Ljava/lang/Number;)V

    .line 1386
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1392
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1344
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1345
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1354
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1346
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1347
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1349
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1350
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1356
    return-void
.end method

.method public add(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1398
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1408
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1400
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1401
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quote(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1403
    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jetty/util/ajax/JSON;->appendBoolean(Ljava/lang/Appendable;Ljava/lang/Boolean;)V

    .line 1404
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    .line 1410
    return-void

    .line 1403
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 1327
    :try_start_0
    iget-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    if-nez v0, :cond_0

    .line 1328
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :catch_0
    move-exception v0

    .line 1336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1329
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    iget-char v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1330
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    const-string v1, "\"class\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1331
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->b:Lorg/eclipse/jetty/util/ajax/JSON;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->c:Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ajax/JSON;->append(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 1332
    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$a;->a:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1338
    return-void
.end method
