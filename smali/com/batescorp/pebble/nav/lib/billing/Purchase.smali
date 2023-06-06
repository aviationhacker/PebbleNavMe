.class public Lcom/batescorp/pebble/nav/lib/billing/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->i:Ljava/lang/String;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->b:Ljava/lang/String;

    .line 41
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->c:Ljava/lang/String;

    .line 42
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->d:Ljava/lang/String;

    .line 43
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->e:J

    .line 44
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->f:I

    .line 45
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->g:Ljava/lang/String;

    .line 46
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->h:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->j:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->f:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->e:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
