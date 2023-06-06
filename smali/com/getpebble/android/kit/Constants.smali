.class public final Lcom/getpebble/android/kit/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getpebble/android/kit/Constants$PebbleDataType;,
        Lcom/getpebble/android/kit/Constants$PebbleAppType;
    }
.end annotation


# static fields
.field public static final APP_UUID:Ljava/lang/String; = "uuid"

.field public static final CUST_APP_TYPE:Ljava/lang/String; = "app_type"

.field public static final CUST_ICON:Ljava/lang/String; = "icon"

.field public static final CUST_NAME:Ljava/lang/String; = "name"

.field public static final DATA_LOG_TAG:Ljava/lang/String; = "data_log_tag"

.field public static final DATA_LOG_TIMESTAMP:Ljava/lang/String; = "data_log_timestamp"

.field public static final DATA_LOG_UUID:Ljava/lang/String; = "data_log_uuid"

.field public static final GOLF_BACK_KEY:I = 0x2

.field public static final GOLF_CMD_KEY:I = 0x5

.field public static final GOLF_CMD_NEXT:I = 0x2

.field public static final GOLF_CMD_PREV:I = 0x1

.field public static final GOLF_FRONT_KEY:I = 0x0

.field public static final GOLF_HOLE_KEY:I = 0x3

.field public static final GOLF_MID_KEY:I = 0x1

.field public static final GOLF_PAR_KEY:I = 0x4

.field public static final GOLF_UUID:Ljava/util/UUID;

.field public static final INTENT_APP_ACK:Ljava/lang/String; = "com.getpebble.action.app.ACK"

.field public static final INTENT_APP_CUSTOMIZE:Ljava/lang/String; = "com.getpebble.action.app.CONFIGURE"

.field public static final INTENT_APP_NACK:Ljava/lang/String; = "com.getpebble.action.app.NACK"

.field public static final INTENT_APP_RECEIVE:Ljava/lang/String; = "com.getpebble.action.app.RECEIVE"

.field public static final INTENT_APP_RECEIVE_ACK:Ljava/lang/String; = "com.getpebble.action.app.RECEIVE_ACK"

.field public static final INTENT_APP_RECEIVE_NACK:Ljava/lang/String; = "com.getpebble.action.app.RECEIVE_NACK"

.field public static final INTENT_APP_SEND:Ljava/lang/String; = "com.getpebble.action.app.SEND"

.field public static final INTENT_APP_START:Ljava/lang/String; = "com.getpebble.action.app.START"

.field public static final INTENT_APP_STOP:Ljava/lang/String; = "com.getpebble.action.app.STOP"

.field public static final INTENT_DL_ACK_DATA:Ljava/lang/String; = "com.getpebble.action.dl.ACK_DATA"

.field public static final INTENT_DL_FINISH_SESSION:Ljava/lang/String; = "com.getpebble.action.dl.FINISH_SESSION_NEW"

.field public static final INTENT_DL_RECEIVE_DATA:Ljava/lang/String; = "com.getpebble.action.dl.RECEIVE_DATA_NEW"

.field public static final INTENT_DL_REQUEST_DATA:Ljava/lang/String; = "com.getpebble.action.dl.REQUEST_DATA"

.field public static final INTENT_PEBBLE_CONNECTED:Ljava/lang/String; = "com.getpebble.action.PEBBLE_CONNECTED"

.field public static final INTENT_PEBBLE_DISCONNECTED:Ljava/lang/String; = "com.getpebble.action.PEBBLE_DISCONNECTED"

.field public static final KIT_STATE_COLUMN_APPMSG_SUPPORT:I = 0x1

.field public static final KIT_STATE_COLUMN_CONNECTED:I = 0x0

.field public static final KIT_STATE_COLUMN_DATALOGGING_SUPPORT:I = 0x2

.field public static final KIT_STATE_COLUMN_VERSION_MAJOR:I = 0x3

.field public static final KIT_STATE_COLUMN_VERSION_MINOR:I = 0x4

.field public static final KIT_STATE_COLUMN_VERSION_POINT:I = 0x5

.field public static final KIT_STATE_COLUMN_VERSION_TAG:I = 0x6

.field public static final MSG_DATA:Ljava/lang/String; = "msg_data"

.field public static final PBL_DATA_ID:Ljava/lang/String; = "pbl_data_id"

.field public static final PBL_DATA_OBJECT:Ljava/lang/String; = "pbl_data_object"

.field public static final PBL_DATA_TYPE:Ljava/lang/String; = "pbl_data_type"

.field public static final SPORTS_DATA_KEY:I = 0x2

.field public static final SPORTS_DATA_PACE:I = 0x1

.field public static final SPORTS_DATA_SPEED:I = 0x0

.field public static final SPORTS_DISTANCE_KEY:I = 0x1

.field public static final SPORTS_LABEL_KEY:I = 0x5

.field public static final SPORTS_STATE_END:I = 0x3

.field public static final SPORTS_STATE_INIT:I = 0x0

.field public static final SPORTS_STATE_KEY:I = 0x4

.field public static final SPORTS_STATE_PAUSED:I = 0x2

.field public static final SPORTS_STATE_RUNNING:I = 0x1

.field public static final SPORTS_TIME_KEY:I = 0x0

.field public static final SPORTS_UNITS_IMPERIAL:I = 0x0

.field public static final SPORTS_UNITS_KEY:I = 0x3

.field public static final SPORTS_UNITS_METRIC:I = 0x1

.field public static final SPORTS_UUID:Ljava/util/UUID;

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field static final a:Landroid/net/Uri;

.field static final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "4dab81a6-d2fc-458a-992c-7a1f3b96a970"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/getpebble/android/kit/Constants;->SPORTS_UUID:Ljava/util/UUID;

    .line 100
    const-string v0, "cf1e816a-9db0-4511-bbb8-f60c48ca8fac"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/getpebble/android/kit/Constants;->GOLF_UUID:Ljava/util/UUID;

    .line 369
    const-string v0, "content://com.getpebble.android.provider/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/getpebble/android/kit/Constants;->a:Landroid/net/Uri;

    .line 371
    const-string v0, "content://com.getpebble.android.provider.basalt/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/getpebble/android/kit/Constants;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method
