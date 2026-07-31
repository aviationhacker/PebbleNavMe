.class public Lcom/batescorp/pebble/nav/lib/NotificationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/lib/NotificationHandler$ALERT_TYPE;
    }
.end annotation


# static fields
.field public static final HAVE_UUID:I = 0x9

.field public static final NAV_ALERT:I = 0x4

.field public static final NAV_ALERT_ENABLED:I = 0xc

.field public static final NAV_DEST_BEGIN:I = 0x10

.field public static final NAV_DEST_DESC:I = 0x11

.field public static final NAV_DEST_END:I = 0x12

.field public static final NAV_DEST_VER:I = 0x13

.field public static final NAV_ETA_DIST:I = 0x7

.field public static final NAV_ETA_TIME:I = 0x6

.field public static final NAV_GPS_ACCURACY:I = 0xf

.field public static final NAV_SPEED:I = 0xd

.field public static final NAV_SPEED_UNIT:I = 0xe

.field public static final NAV_TEXT_BEGIN:I = 0x0

.field public static final NAV_TEXT_DATA:I = 0x1

.field public static final NAV_TEXT_END:I = 0x2

.field public static final NAV_TURN:I = 0x8

.field public static final NAV_TURN_DISTANCE:I = 0x3

.field public static final NAV_TURN_DISTANCE_UNIT:I = 0x5

.field public static final PEBBLE_NAV_UUID:Ljava/util/UUID;

.field public static final PEBBLE_SYSTEM_UUID:Ljava/util/UUID;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "1bdfe435-6a34-42d5-aed7-ace29fec1259"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    .line 63
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_SYSTEM_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->b:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->c:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->d:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->e:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->g:Ljava/util/Collection;

    .line 385
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Context;Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 246
    move v2, v3

    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 249
    :try_start_0
    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 254
    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    .line 259
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 264
    :goto_2
    const-string v0, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationPosted (???) before: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 267
    const-string v0, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationPosted (ImageView) before: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 268
    check-cast v0, Landroid/widget/ImageView;

    .line 269
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - ImageView) ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v5, "icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "right_icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setNavBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    :cond_3
    instance-of v0, v1, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 295
    const-string v0, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationPosted (ViewStub) before: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    check-cast v1, Landroid/view/ViewStub;

    .line 297
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 298
    const-string v0, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationPosted (ViewStub) after: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_4
    const-string v0, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationPosted (view - class): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    instance-of v0, v1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 303
    check-cast v0, Landroid/widget/ProgressBar;

    .line 304
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - progress) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - progress) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_5
    instance-of v0, v1, Landroid/widget/Button;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 308
    check-cast v0, Landroid/widget/Button;

    .line 309
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - button) ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v5, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->g:Ljava/util/Collection;

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_6
    instance-of v0, v1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 313
    check-cast v0, Landroid/widget/ImageButton;

    .line 315
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - ImageButton) ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_7
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 319
    check-cast v0, Landroid/widget/TextView;

    .line 320
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 321
    if-eqz v4, :cond_9

    .line 322
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationPosted (view - text) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_3
    invoke-virtual {p0, p2, v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->processTextView(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 331
    :cond_8
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationPosted (processRemoteView - ViewGroup): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a(Landroid/content/Context;Landroid/content/Context;Landroid/view/ViewGroup;)Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    :catch_0
    move-exception v4

    .line 261
    const-string v5, "NotificationHandler"

    const-string v6, "getResources failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v0

    goto/16 :goto_2

    .line 324
    :cond_9
    const-string v4, "NotificationHandler"

    const-string v5, "onNotificationPosted (view - text) is NULL!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 337
    :cond_a
    const-string v0, "Failed to process"

    return-object v0

    .line 250
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/lib/NotificationHandler;Landroid/content/Context;Landroid/content/Context;Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a(Landroid/content/Context;Landroid/content/Context;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloseableInstance(Landroid/app/Notification;Ljava/lang/String;Landroid/content/Context;)Lcom/batescorp/pebble/nav/lib/NotificationHandler;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;-><init>()V

    .line 138
    invoke-virtual {v0, p1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setPackageName(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;

    invoke-direct {v2, p2, p1, p0, v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 226
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    const-string v2, "NotificationHandler"

    const-string v3, "onNotificationPosted ERROR"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    .line 393
    :cond_0
    return-void
.end method

.method public getButtons()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->g:Ljava/util/Collection;

    return-object v0
.end method

.method public getNavBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNavDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected getNavDescriptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "nav_description"

    return-object v0
.end method

.method public getNavHtmlDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNavTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected getNavTimeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "nav_time"

    return-object v0
.end method

.method public getNavTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getNavTitleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "nav_title"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected processTextView(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 6

    .prologue
    .line 342
    const-string v0, ""

    .line 343
    const-string v2, ""

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 347
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 350
    :goto_0
    const-string v0, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotificationPosted (view - text) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavDescriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "title"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setNavDescription(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_1
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setNavHtmlDescription(Ljava/lang/String;)V

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavTitleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setNavTitle(Ljava/lang/String;)V

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavTimeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "header_text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    :cond_3
    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->setNavTime(Ljava/lang/String;)V

    .line 369
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public setNavBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->f:Landroid/graphics/Bitmap;

    .line 243
    return-void
.end method

.method protected setNavDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->c:Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected setNavHtmlDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->d:Ljava/lang/String;

    .line 110
    return-void
.end method

.method protected setNavTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->e:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected setNavTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->b:Ljava/lang/String;

    .line 90
    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    const-string v1, "packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "navTitle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "navDescription : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "navTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
