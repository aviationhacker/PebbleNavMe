.class public Lcom/getpebble/android/kit/util/PebbleDictionary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getpebble/android/kit/util/PebbleDictionary$1;,
        Lcom/getpebble/android/kit/util/PebbleDictionary$TupleOverflowException;,
        Lcom/getpebble/android/kit/util/PebbleDictionary$PebbleDictTypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/getpebble/android/kit/util/PebbleTuple;",
        ">;"
    }
.end annotation


# instance fields
.field protected final tuples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/getpebble/android/kit/util/PebbleTuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    .line 277
    return-void
.end method

.method private a(ILcom/getpebble/android/kit/util/PebbleTuple$a;)Lcom/getpebble/android/kit/util/PebbleTuple;
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 191
    :cond_1
    return-object v0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/util/PebbleTuple;

    .line 188
    iget-object v1, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    if-eq v1, p2, :cond_1

    .line 189
    new-instance v1, Lcom/getpebble/android/kit/util/PebbleDictionary$PebbleDictTypeException;

    int-to-long v2, p1

    iget-object v0, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-direct {v1, v2, v3, p2, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary$PebbleDictTypeException;-><init>(JLcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$a;)V

    throw v1
.end method

.method private static a(Lcom/getpebble/android/kit/util/PebbleTuple;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 353
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 354
    const-string v0, "key"

    iget v2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v0, "type"

    iget-object v2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-virtual {v2}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v0, "length"

    iget-object v2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->e:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    iget v2, v2, Lcom/getpebble/android/kit/util/PebbleTuple$b;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleDictionary$1;->a:[I

    iget-object v2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-virtual {v2}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-object v1

    .line 360
    :pswitch_0
    const-string v2, "value"

    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 365
    :pswitch_1
    const-string v0, "value"

    iget-object v2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;
    .locals 8

    .prologue
    .line 311
    new-instance v3, Lcom/getpebble/android/kit/util/PebbleDictionary;

    invoke-direct {v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;-><init>()V

    .line 313
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 315
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 316
    const-string v0, "key"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 317
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple;->a:Ljava/util/Map;

    const-string v1, "type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 318
    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple;->b:Ljava/util/Map;

    const-string v7, "length"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 320
    sget-object v7, Lcom/getpebble/android/kit/util/PebbleDictionary$1;->a:[I

    invoke-virtual {v0}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    .line 314
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 322
    :pswitch_0
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 323
    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addBytes(I[B)V

    goto :goto_1

    .line 326
    :pswitch_1
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addString(ILjava/lang/String;)V

    goto :goto_1

    .line 329
    :pswitch_2
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_1

    .line 330
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt8(IB)V

    goto :goto_1

    .line 331
    :cond_1
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_2

    .line 332
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt16(IS)V

    goto :goto_1

    .line 333
    :cond_2
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_0

    .line 334
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addInt32(II)V

    goto :goto_1

    .line 338
    :pswitch_3
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_3

    .line 339
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addUint8(IB)V

    goto :goto_1

    .line 340
    :cond_3
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_4

    .line 341
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addUint16(IS)V

    goto :goto_1

    .line 342
    :cond_4
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-ne v1, v0, :cond_0

    .line 343
    const-string v0, "value"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v6, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addUint32(II)V

    goto :goto_1

    .line 349
    :cond_5
    return-object v3

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addBytes(I[B)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;Ljava/lang/Object;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 81
    return-void
.end method

.method public addInt16(IS)V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 138
    return-void
.end method

.method public addInt32(II)V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 166
    return-void
.end method

.method public addInt8(IB)V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 110
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;Ljava/lang/Object;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 96
    return-void
.end method

.method protected addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 264
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleDictionary$TupleOverflowException;

    invoke-direct {v0}, Lcom/getpebble/android/kit/util/PebbleDictionary$TupleOverflowException;-><init>()V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    iget v1, p1, Lcom/getpebble/android/kit/util/PebbleTuple;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public addUint16(IS)V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->c:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 152
    return-void
.end method

.method public addUint32(II)V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->d:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 180
    return-void
.end method

.method public addUint8(IB)V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple$b;->b:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    invoke-static {p1, v0, v1, p2}, Lcom/getpebble/android/kit/util/PebbleTuple;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->addTuple(Lcom/getpebble/android/kit/util/PebbleTuple;)V

    .line 124
    return-void
.end method

.method public contains(I)Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-direct {p0, p1, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 240
    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public getInteger(I)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-direct {p0, p1, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-direct {p0, p1, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnsignedIntegerAsLong(I)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->c:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    invoke-direct {p0, p1, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->a(ILcom/getpebble/android/kit/util/PebbleTuple$a;)Lcom/getpebble/android/kit/util/PebbleTuple;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/getpebble/android/kit/util/PebbleTuple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 291
    iget-object v0, p0, Lcom/getpebble/android/kit/util/PebbleDictionary;->tuples:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getpebble/android/kit/util/PebbleTuple;

    .line 292
    invoke-static {v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->a(Lcom/getpebble/android/kit/util/PebbleTuple;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 298
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 294
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
