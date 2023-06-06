.class public Lcom/batescorp/pebble/nav/processor/NavHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/processor/NavHandler$a;,
        Lcom/batescorp/pebble/nav/processor/NavHandler$b;
    }
.end annotation


# static fields
.field private static d:J

.field private static e:Z

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;


# instance fields
.field private a:Lcom/batescorp/pebble/nav/processor/NavState;

.field private b:Lcom/batescorp/pebble/nav/processor/NavConfig;

.field private c:Landroid/content/ContextWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->d:J

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z

    .line 97
    const-string v0, "^\\s*(.*?)\\s*-\\s*(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->f:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "(.*)\u00b7(.*)\u00b7(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->g:Ljava/util/regex/Pattern;

    .line 229
    const-string v0, "([0-9]+[.,][0-9]+|[0-9]+)[\\s]*(mi|km|\u043a\u043c|m|\u043c|ft|fot|milles|l\u00e1b|mf|fod|mil|st|pd|pies|pi|p\u00e9s|vt|\u043c\u0438\u043b.|\u0444\u0443\u0442.)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->h:Ljava/util/regex/Pattern;

    .line 284
    const-string v0, "(.*)\u00b7[\\s]([0-9]+[,.]*[\\d]*)[\\W]*(.*?)[\\W]*\u00b7.*?([\\d]+:[\\d]+[\\s]*[\\w]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->i:Ljava/util/regex/Pattern;

    .line 329
    const-string v0, "([\\d\\.]+)(.*)\u00b7(.*)\u00b7(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->j:Ljava/util/regex/Pattern;

    .line 330
    const-string v0, "((\\d+.\\d+).*(AM|am|PM|pm)|((\\d+.\\d+)))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    .line 20
    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->b:Lcom/batescorp/pebble/nav/processor/NavConfig;

    .line 21
    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->c:Landroid/content/ContextWrapper;

    .line 272
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 12

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x4099255c28f5c28fL    # 1609.34

    const-wide v4, 0x3fd381d7dbf487fdL    # 0.3048

    .line 466
    const-string v0, ","

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 471
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 537
    const-string v0, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNextDirection Unable to process string unknown unit type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 471
    :sswitch_0
    const-string v3, "mi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "milles"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "mf"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "mil"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "\u043c\u0438\u043b."

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "ft"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "fot"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "fod"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "vt"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "st"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "pd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "pies"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "p\u00e9s"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "\u0444\u0443\u0442."

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "pi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "l\u00e1b"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "km"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "\u043a\u043c"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "m"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "\u043c"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    .line 473
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    goto/16 :goto_1

    .line 475
    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    goto/16 :goto_1

    .line 477
    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    goto/16 :goto_1

    .line 480
    :pswitch_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    goto/16 :goto_1

    .line 483
    :pswitch_4
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    goto/16 :goto_1

    .line 488
    :pswitch_5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 490
    :pswitch_6
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 492
    :pswitch_7
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 497
    :pswitch_8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 502
    :pswitch_9
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 507
    :pswitch_a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 509
    :pswitch_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 511
    :pswitch_c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 513
    :pswitch_d
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 515
    :pswitch_e
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 517
    :pswitch_f
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    goto/16 :goto_1

    .line 522
    :pswitch_10
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    double-to-long v0, v0

    goto/16 :goto_1

    .line 524
    :pswitch_11
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v10

    double-to-long v0, v0

    goto/16 :goto_1

    .line 529
    :pswitch_12
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    goto/16 :goto_1

    .line 531
    :pswitch_13
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    goto/16 :goto_1

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        -0x40056636 -> :sswitch_1
        0x6d -> :sswitch_12
        0x43c -> :sswitch_13
        0xcce -> :sswitch_5
        0xd62 -> :sswitch_10
        0xd99 -> :sswitch_2
        0xd9c -> :sswitch_0
        0xdf4 -> :sswitch_a
        0xdf9 -> :sswitch_e
        0xe61 -> :sswitch_9
        0xebe -> :sswitch_8
        0x8742 -> :sswitch_11
        0x18cbb -> :sswitch_7
        0x18ccb -> :sswitch_6
        0x1a650 -> :sswitch_3
        0x1b10d -> :sswitch_f
        0x1c11a -> :sswitch_c
        0x348067 -> :sswitch_b
        0x1fd1bcf -> :sswitch_4
        0x200e8eb -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 214
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDirectionFromTitle (raw): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v0, "---"

    .line 225
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 223
    const-string v0, "---"

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/batescorp/pebble/nav/processor/NavHandler$b;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 232
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextDirection (raw): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 244
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextDirection : 0 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iput-object v0, p1, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->c:Ljava/lang/String;

    .line 255
    iput-object v1, p1, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->b:Ljava/lang/String;

    .line 256
    invoke-direct {p0, v1, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->a:J

    .line 258
    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->d(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    move-result-object v0

    iput-object v0, p1, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->g:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto :goto_0
.end method

.method private a()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/batescorp/pebble/nav/processor/NavHandler;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 55
    sget-boolean v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z

    .line 85
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->c:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    :try_start_0
    const-string v3, "com.google.android.apps.maps"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 63
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->c:Landroid/content/ContextWrapper;

    const v5, 0x7f0600c3

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/batescorp/pebble/nav/util/StringUtil;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 64
    const-string v4, "NavHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Map version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/batescorp/pebble/nav/processor/NavHandler;->d:J

    .line 70
    if-gez v2, :cond_2

    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z

    .line 72
    sget-boolean v2, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z

    if-nez v2, :cond_1

    .line 73
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->c:Landroid/content/ContextWrapper;

    const v5, 0x7f0600c4

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/batescorp/pebble/nav/util/StringUtil;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    const-string v4, "NavHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Map version 2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-ltz v2, :cond_3

    :goto_2
    sput-boolean v1, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z

    .line 81
    :cond_1
    sget-boolean v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_2
    move v2, v0

    .line 70
    goto :goto_1

    :cond_3
    move v1, v0

    .line 78
    goto :goto_2

    .line 82
    :catch_0
    move-exception v1

    .line 83
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/batescorp/pebble/nav/processor/NavHandler;->d:J

    .line 84
    const-string v2, "NavHandler"

    const-string v3, "Failed to determine version "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavHandler$a;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 294
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processEst1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/processor/NavHandler$a;-><init>(Lcom/batescorp/pebble/nav/processor/NavHandler;)V

    .line 298
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandler;->i:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    :goto_0
    return-object v0

    .line 307
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 309
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->a:Ljava/lang/String;

    .line 315
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    .line 316
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    .line 318
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estTime - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estDist - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estDistUnit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estArrivalTIme - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->e:J

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavHandler$a;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 333
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processEst2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/processor/NavHandler$a;-><init>(Lcom/batescorp/pebble/nav/processor/NavHandler;)V

    .line 337
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandler;->j:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 348
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    .line 353
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    .line 354
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    .line 357
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandler;->k:Ljava/util/regex/Pattern;

    iget-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    .line 364
    :goto_1
    iget-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    const-string v2, "ETA"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    .line 365
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estTime - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estDist - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estDistUnit - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processEst1 : estArrivalTIme - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->e:J

    goto/16 :goto_0

    .line 361
    :cond_2
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private d(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavSpeedType;
    .locals 3

    .prologue
    .line 387
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 453
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "covertToSpeedType Unable to process string unknown unit type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 387
    :sswitch_0
    const-string v1, "mi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "mil"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "milles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "\u043c\u0438\u043b."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "ft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "fot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "fod"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "p\u00e9s"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "vt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "mf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "l\u00e1b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "st"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "pd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "pies"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "\u0444\u0443\u0442."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "pi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "km"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "\u043a\u043c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "m"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "\u043c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    .line 389
    :pswitch_0
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 391
    :pswitch_1
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 393
    :pswitch_2
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 395
    :pswitch_3
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 400
    :pswitch_4
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 405
    :pswitch_5
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 407
    :pswitch_6
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 409
    :pswitch_7
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 414
    :pswitch_8
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 416
    :pswitch_9
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 418
    :pswitch_a
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 423
    :pswitch_b
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 428
    :pswitch_c
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 430
    :pswitch_d
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 432
    :pswitch_e
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 434
    :pswitch_f
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 438
    :pswitch_10
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 440
    :pswitch_11
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 445
    :pswitch_12
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 447
    :pswitch_13
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    goto/16 :goto_1

    .line 387
    :sswitch_data_0
    .sparse-switch
        -0x40056636 -> :sswitch_2
        0x6d -> :sswitch_12
        0x43c -> :sswitch_13
        0xcce -> :sswitch_4
        0xd62 -> :sswitch_10
        0xd99 -> :sswitch_9
        0xd9c -> :sswitch_0
        0xdf4 -> :sswitch_c
        0xdf9 -> :sswitch_f
        0xe61 -> :sswitch_b
        0xebe -> :sswitch_8
        0x8742 -> :sswitch_11
        0x18cbb -> :sswitch_6
        0x18ccb -> :sswitch_5
        0x1a650 -> :sswitch_1
        0x1b10d -> :sswitch_a
        0x1c11a -> :sswitch_7
        0x348067 -> :sswitch_d
        0x1fd1bcf -> :sswitch_3
        0x200e8eb -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavHandler;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandler;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    .line 33
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->b:Lcom/batescorp/pebble/nav/processor/NavConfig;

    .line 34
    iput-object p0, v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->c:Landroid/content/ContextWrapper;

    .line 36
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->clearState()V

    .line 44
    return-void
.end method

.method public processNotificationHandler(FLcom/batescorp/pebble/nav/lib/NotificationData;)Lcom/batescorp/pebble/nav/processor/NavHandlerResult;
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 100
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v8, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 208
    :cond_0
    :goto_0
    return-object v8

    .line 105
    :cond_1
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler : packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler : navDescription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler : navHtmlDescription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavHtmlDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler : navTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler : navTitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;

    invoke-direct {v9, p0}, Lcom/batescorp/pebble/nav/processor/NavHandler$b;-><init>(Lcom/batescorp/pebble/nav/processor/NavHandler;)V

    .line 116
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    const-string v0, "NavHandler"

    const-string v1, "processNotificationHandler : OLD PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 119
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandler;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    .line 132
    :goto_1
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->b(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavHandler$a;

    move-result-object v0

    .line 145
    :goto_2
    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    iget-object v2, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/batescorp/pebble/nav/processor/NavState;->setEst1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    iget-object v0, v0, Lcom/batescorp/pebble/nav/processor/NavHandler$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavState;->setEst2(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->getLastDistance()J

    move-result-wide v4

    .line 154
    sget-object v6, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 158
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler (notify check) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->b:Lcom/batescorp/pebble/nav/processor/NavConfig;

    iget-wide v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->a:J

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/batescorp/pebble/nav/processor/NavConfig;->checkDistanceForSpeed(FJJ)I

    move-result v0

    .line 162
    if-lez v0, :cond_2

    .line 163
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandler$1;->a:[I

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavImage()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->getTurnType()Lcom/batescorp/pebble/nav/processor/NavTurnType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavTurnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    move-object v0, v6

    .line 176
    :goto_3
    const-string v1, "NavHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processNotificationHandler (html) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavHtmlDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    iput-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->e:Ljava/lang/String;

    .line 179
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavImage()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v1

    iput-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 182
    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->b:Lcom/batescorp/pebble/nav/processor/NavConfig;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->ignoreStraight()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->isStraight()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->b:Lcom/batescorp/pebble/nav/processor/NavConfig;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertOnNewDirection()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 189
    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->getLastDirection()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    .line 190
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->getLastDirection()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 191
    :cond_4
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->GENERIC:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    move-object v8, v0

    .line 196
    :goto_4
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler;->a:Lcom/batescorp/pebble/nav/processor/NavState;

    iget-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    iget-wide v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->a:J

    iget-object v4, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->b:Ljava/lang/String;

    iget-object v5, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->c:Ljava/lang/String;

    iget-object v6, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    iget-object v7, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->g:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual/range {v0 .. v7}, Lcom/batescorp/pebble/nav/processor/NavState;->setDirection(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;Lcom/batescorp/pebble/nav/processor/NavSpeedType;)V

    .line 204
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    invoke-virtual {v0, v8}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "NavHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNotificationHandler (notify) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/util/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Lcom/batescorp/pebble/nav/processor/NavHandler$b;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_6
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    .line 130
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Lcom/batescorp/pebble/nav/processor/NavHandler$b;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_7
    const-string v0, "NavHandler"

    const-string v1, "processNotificationHandler : NEW PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    .line 140
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->a(Lcom/batescorp/pebble/nav/processor/NavHandler$b;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->c(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavHandler$a;

    move-result-object v0

    goto/16 :goto_2

    .line 165
    :pswitch_0
    if-ne v0, v7, :cond_8

    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    .line 168
    :pswitch_1
    if-ne v0, v7, :cond_9

    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    :cond_9
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    .line 171
    :pswitch_2
    if-ne v0, v7, :cond_a

    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    goto/16 :goto_3

    :cond_b
    move-object v8, v0

    goto/16 :goto_4

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
