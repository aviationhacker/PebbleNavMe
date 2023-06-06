.class public Lcom/batescorp/pebble/nav/processor/NavConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NAV_CONFIG:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "NAV_CONFIG"

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavConfig;->NAV_CONFIG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavConfig;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavConfig;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JJJ)Z
    .locals 3

    .prologue
    .line 237
    cmp-long v0, p3, p1

    if-gtz v0, :cond_1

    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_0

    cmp-long v0, p5, p1

    if-lez v0, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavConfig;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/batescorp/pebble/nav/processor/NavConfig;->a:Landroid/content/Context;

    .line 28
    return-object v0
.end method


# virtual methods
.method public alertEnabled(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    const v1, 0x7f060081

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public alertEnabled()Z
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060081

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060080

    .line 46
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public alertOnNewDirection()Z
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f06009a

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060099

    .line 142
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 141
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public alertOnStart()Z
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06009d

    .line 63
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public buzzOnAlert()Z
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f06007d

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkDistanceForSpeed(FJJ)I
    .locals 12

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 200
    const/4 v0, -0x1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    const/high16 v0, 0x41b00000    # 22.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 207
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Long;

    const/4 v0, 0x0

    const-wide/16 v2, 0x99

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x193

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    .line 209
    const/4 v1, 0x2

    .line 210
    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v1, v9, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 211
    invoke-direct/range {v1 .. v7}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(JJJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    add-int/lit8 v1, v0, -0x1

    .line 210
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v1

    goto :goto_1

    .line 219
    :cond_2
    const/high16 v0, 0x41b00000    # 22.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    .line 222
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Long;

    const/4 v0, 0x0

    const-wide/16 v2, 0x132

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0xc93

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    .line 224
    const/4 v1, 0x2

    .line 225
    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    :goto_2
    if-ge v8, v10, :cond_3

    aget-object v1, v9, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 226
    invoke-direct/range {v1 .. v7}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(JJJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    add-int/lit8 v1, v0, -0x1

    .line 225
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v1

    goto :goto_2

    .line 232
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public closeWhenDone()Z
    .locals 4

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060083

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavConfig;->a:Landroid/content/Context;

    const v3, 0x7f060082

    .line 151
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 150
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public disableAlertIfGoogleActive()Z
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060089

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06008a

    .line 112
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDestinationVer()I
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "destinations_ver"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDestinations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/batescorp/pebble/nav/activity/DestinationValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "destinations"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, [Lcom/batescorp/pebble/nav/activity/DestinationValue;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstAlert()I
    .locals 3

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060086

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFirstLeftAlert()I
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060097

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFirstRightAlert()I
    .locals 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0600a5

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGenericAlert()I
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060092

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSecondAlert()I
    .locals 3

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060087

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSecondLeftAlert()I
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060098

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSecondRightAlert()I
    .locals 3

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0600a6

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ignoreStraight()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public launchNavMeOnAlert()Z
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f060094

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060093

    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportNavCanceled()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public smartFlash()Z
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0600a8

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0600a7

    .line 132
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 131
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public tryQuickLock()Z
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0600a2

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0600a1

    .line 94
    invoke-direct {p0, v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public updateDestinations(Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batescorp/pebble/nav/activity/DestinationValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 81
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    const-string v2, "destinations"

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v2, "destinations_ver"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method
