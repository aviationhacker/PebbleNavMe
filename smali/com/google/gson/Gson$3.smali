.class Lcom/google/gson/Gson$3;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;->a(Z)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/gson/Gson$3;->a:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 3

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 266
    iget-object v2, p0, Lcom/google/gson/Gson$3;->a:Lcom/google/gson/Gson;

    invoke-static {v2, v0, v1}, Lcom/google/gson/Gson;->a(Lcom/google/gson/Gson;D)V

    .line 267
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson$3;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$3;->a(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
