.class public Lcom/batescorp/pebble/nav/processor/NavState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Landroid/content/Context;

.field private i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

.field private j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->a:Ljava/lang/String;

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->b:J

    .line 43
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->d:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->e:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->f:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    .line 55
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->k:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->l:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->m:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->BLANK:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    .line 61
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->p:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavState;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/processor/NavState;-><init>()V

    .line 68
    iput-object p0, v0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    .line 71
    const-string v1, "NAV_STATE"

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    const-string v2, "NAV_STATE_LAST_DIST"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->b:J

    .line 75
    const-string v2, "NAV_STATE_LAST_DIR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060056

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    .line 76
    const-string v2, "NAV_STATE_RAW_LAST_DIST"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->d:Ljava/lang/String;

    .line 77
    const-string v2, "NAV_STATE_RAW_LAST_DIST_UNIT"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->e:Ljava/lang/String;

    .line 79
    const-string v2, "NAV_EST_DIST"

    const-string v3, "---"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->k:Ljava/lang/String;

    .line 80
    const-string v2, "NAV_EST_DIST_UNIT"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->l:Ljava/lang/String;

    .line 81
    const-string v2, "NAV_EST_TIME_REM"

    const-string v3, "---"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->m:Ljava/lang/String;

    .line 83
    const-string v2, "NAV_EST_ARRIVE_TIME"

    const-string v3, "---"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->p:Ljava/lang/String;

    .line 85
    const-string v2, "NAV_STATE_TURN"

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->fromInt(I)Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 86
    const-string v2, "NAV_RUNNING"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->g:Ljava/lang/Boolean;

    .line 87
    const-string v2, "NAV_DESTINATION"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->f:Ljava/lang/String;

    .line 88
    const-string v2, "NAV_SPEED"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->a:Ljava/lang/String;

    .line 90
    const-string v2, "NAV_SPEED_TYPE"

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->fromInt(I)Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    .line 91
    const-string v2, "NAV_GPS_ACCURACY"

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->fromInt(I)Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavState;->j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 93
    const-string v2, "NAV_ERROR_STATE"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    .line 95
    return-object v0
.end method


# virtual methods
.method public clearNavErrorState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    iput-boolean v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    .line 336
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    const-string v1, "NAV_ERROR_STATE"

    iget-boolean v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    return-void
.end method

.method public clearState()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 361
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

    .line 364
    const-string v3, "NAV_RUNNING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 370
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracy()Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0
.end method

.method public getLastDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDistance()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->b:J

    return-wide v0
.end method

.method public getNavEstArriveTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getNavEstDist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getNavEstDistUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getNavGpsAccuracyDesc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavState$1;->b:[I

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getGpsAccuracy()Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
    const-string v0, "NavState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Gps accuracy type (default to ???): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getGpsAccuracy()Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 148
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 150
    :pswitch_1
    const-string v0, "Good"

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "Medium"

    goto :goto_0

    .line 154
    :pswitch_3
    const-string v0, "Poor"

    goto :goto_0

    .line 156
    :pswitch_4
    const-string v0, "Excellent"

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getRawDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDistanceUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeedType()Lcom/batescorp/pebble/nav/processor/NavSpeedType;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto :goto_0
.end method

.method public getSpeedUnit()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getSpeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 117
    :cond_0
    const-string v0, ""

    .line 128
    :goto_0
    return-object v0

    .line 120
    :cond_1
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavState$1;->a:[I

    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    const-string v0, "NavState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown speed type (default to ???): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v0, "???"

    goto :goto_0

    .line 122
    :pswitch_0
    const-string v0, "mph"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v0, "kph"

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTurn()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    return-object v0
.end method

.method public isInErrorState()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public navStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->g:Ljava/lang/Boolean;

    .line 308
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    const-string v1, "NAV_RUNNING"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method public navStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->g:Ljava/lang/Boolean;

    .line 319
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    const-string v1, "NAV_RUNNING"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const-string p1, ""

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->f:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    const-string v1, "NAV_DESTINATION"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public setDirection(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;Lcom/batescorp/pebble/nav/processor/NavSpeedType;)V
    .locals 4

    .prologue
    .line 255
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    .line 256
    iput-wide p2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->b:J

    .line 257
    iput-object p4, p0, Lcom/batescorp/pebble/nav/processor/NavState;->d:Ljava/lang/String;

    .line 258
    iput-object p5, p0, Lcom/batescorp/pebble/nav/processor/NavState;->e:Ljava/lang/String;

    .line 259
    iput-object p6, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 262
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    const-string v1, "NAV_STATE_LAST_DIST"

    iget-wide v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v1, "NAV_STATE_LAST_DIR"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v1, "NAV_STATE_RAW_LAST_DIST"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    const-string v1, "NAV_STATE_RAW_LAST_DIST_UNIT"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    const-string v1, "NAV_STATE_TURN"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    if-eqz p7, :cond_0

    .line 273
    iput-object p7, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    .line 274
    const-string v1, "NAV_SPEED_TYPE"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->i:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method public setEst1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 281
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->k:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->l:Ljava/lang/String;

    .line 283
    iput-object p3, p0, Lcom/batescorp/pebble/nav/processor/NavState;->m:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    const-string v1, "NAV_EST_DIST"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v1, "NAV_EST_DIST_UNIT"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v1, "NAV_EST_TIME_REM"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    return-void
.end method

.method public setEst2(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 295
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->p:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    const-string v1, "NAV_EST_ARRIVE_TIME"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    return-void
.end method

.method public setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->clearState()V

    .line 186
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 189
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const-string v1, "NAV_STATE_LAST_DIR"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "NAV_STATE_TURN"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->n:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public setGpsAccuracy(Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;)V
    .locals 3

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    sget-object p1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 236
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    const-string v1, "NAV_GPS_ACCURACY"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->j:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    return-void
.end method

.method public setNavErrorState()V
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    .line 328
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    const-string v1, "NAV_ERROR_STATE"

    iget-boolean v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string p1, ""

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavState;->a:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavState;->h:Landroid/content/Context;

    const-string v1, "NAV_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const-string v1, "NAV_SPEED"

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavState;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method
