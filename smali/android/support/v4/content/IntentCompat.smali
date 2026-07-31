.class public Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/IntentCompat$d;,
        Landroid/support/v4/content/IntentCompat$c;,
        Landroid/support/v4/content/IntentCompat$b;,
        Landroid/support/v4/content/IntentCompat$a;
    }
.end annotation


# static fields
.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field private static final a:Landroid/support/v4/content/IntentCompat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/content/IntentCompat$d;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/content/IntentCompat$c;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/support/v4/content/IntentCompat$b;

    invoke-direct {v0}, Landroid/support/v4/content/IntentCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$a;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/IntentCompat$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Landroid/support/v4/content/IntentCompat;->a:Landroid/support/v4/content/IntentCompat$a;

    invoke-interface {v0, p0}, Landroid/support/v4/content/IntentCompat$a;->b(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
