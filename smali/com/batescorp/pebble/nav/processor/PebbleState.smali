.class public Lcom/batescorp/pebble/nav/processor/PebbleState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/ContextWrapper;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->a:Landroid/content/ContextWrapper;

    const-string v1, "PEBBLE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "DIRECTION_STATE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v1, "DISTANCE_STATE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v1, "DISTANCE_UNIT_STATE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "ETA_DISTANCE_STATE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "ETA_DISTANCE_UNIT_STATE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "ETA_ARRIVAL_TIME"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v1, "NAV_TURN"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->h:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v1, "NAV_TURN_STRING"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v1, "NAV_SPEED"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v1, "NAV_SPEED_UNIT"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v1, "NAV_GPS_ACCURACY"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public static getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/batescorp/pebble/nav/processor/PebbleState;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;-><init>()V

    .line 54
    iput-object p0, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->a:Landroid/content/ContextWrapper;

    .line 57
    const-string v1, "PEBBLE_STATE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    const-string v2, "DIRECTION_STATE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->b:Ljava/lang/String;

    .line 61
    const-string v2, "DISTANCE_STATE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->d:Ljava/lang/String;

    .line 62
    const-string v2, "DISTANCE_UNIT_STATE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->c:Ljava/lang/String;

    .line 64
    const-string v2, "ETA_DISTANCE_STATE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->e:Ljava/lang/String;

    .line 65
    const-string v2, "ETA_DISTANCE_UNIT_STATE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->f:Ljava/lang/String;

    .line 67
    const-string v2, "ETA_ARRIVAL_TIME"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->g:Ljava/lang/String;

    .line 68
    const-string v2, "NAV_TURN"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->fromInt(I)Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->h:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 69
    const-string v2, "NAV_TURN_STRING"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->i:Ljava/lang/String;

    .line 70
    const-string v2, "NAV_SPEED"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->j:Ljava/lang/String;

    .line 71
    const-string v2, "NAV_SPEED_UNIT"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->k:Ljava/lang/String;

    .line 72
    const-string v2, "NAV_GPS_ACCURACY"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/PebbleState;->l:Ljava/lang/String;

    .line 74
    return-object v0
.end method


# virtual methods
.method public clearState()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->a:Landroid/content/ContextWrapper;

    const-string v1, "PEBBLE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    const-string v3, "NAV_SPEED_UNIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 121
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEtaArrivalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getEtaDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getEtaDistanceUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->h:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    return-object v0
.end method

.method public declared-synchronized sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 4

    .prologue
    .line 224
    monitor-enter p0

    if-nez p1, :cond_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->a:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getLastDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateDirection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    const-string v1, "PebbleState"

    const-string v2, "updateDirection (send)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendDirection(Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getRawDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getRawDistanceUnits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    const-string v1, "PebbleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDistance (send) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getRawDistance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getRawDistanceUnits()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDistanceUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendDistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateTurn(Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const-string v1, "PebbleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTurn (send) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendIcon(Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 245
    :cond_3
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavEstDist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavEstDistUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateEtaDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    const-string v1, "PebbleState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEtaDistance (send) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavEstDist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavEstDistUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaDistanceUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendEtaDistance(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavEstArriveTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateEtaArrivalTime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    const-string v1, "PebbleState"

    const-string v2, "updateEtaArrivalTime (send)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaArrivalTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendEtaArrivalTime(Ljava/lang/String;)V

    .line 255
    :cond_5
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getSpeedUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateSpeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    const-string v1, "PebbleState"

    const-string v2, "updateSpeed (send)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getSpeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getSpeedUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendSpeed(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_6
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getNavGpsAccuracyDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->updateGpsAccuracy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    const-string v0, "PebbleState"

    const-string v1, "updateGpsAccuracy (send)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getGpsAccuracy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendGpsAccuracy(Ljava/lang/String;)V

    .line 265
    :cond_7
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDirection(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDirection()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->b:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDistance()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getDistanceUnit()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->d:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->c:Ljava/lang/String;

    .line 184
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateEtaArrivalTime(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaArrivalTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->g:Ljava/lang/String;

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateEtaDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaDistance()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getEtaDistanceUnit()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->e:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->f:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateGpsAccuracy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getGpsAccuracy()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->l:Ljava/lang/String;

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateSpeed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getSpeedUnit()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->j:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->k:Ljava/lang/String;

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTurn(Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/lib/CompareUtil;->compare(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/PebbleState;->h:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 160
    const/4 v0, 0x1

    goto :goto_0
.end method
