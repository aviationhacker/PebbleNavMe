.class public Lcom/batescorp/pebble/nav/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/MainActivity$a;,
        Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;
    }
.end annotation


# static fields
.field static g:Landroid/app/Activity;


# instance fields
.field a:Landroid/content/IntentFilter;

.field b:Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;

.field c:Landroid/widget/Button;

.field d:Landroid/app/AlertDialog;

.field e:Landroid/app/AlertDialog;

.field f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

.field h:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 233
    new-instance v0, Lcom/batescorp/pebble/nav/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/MainActivity$4;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->h:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 557
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzH/mZVNWNkh/1crQe67CKf8V9XDUPYKmDAYgFTYUcFKWsjsIWyoN7nVGZeK9knKR5ebh0cZHqSj7MGUxn8PzIKJmnEsYo78H/r8CC8eMMrfMuJ27txGpWLlgKlJSgRBZtJpcUAbjJQj+AoBQUuDG05OU0IWLdcus4cfWEWpyAnES/WFRtWPMLwQ8XWwnGyP312g199eQp3G4ol9XYyVZXcRASfKu8yTTK0WhHkFRyNoj8nuRGnDCiGzNyiTV4NBfUIDfUw6ZawAKf8GkJZ4KA94eOrfCftclHB5zlCWd0qKod4gjOCXTjVwaJ5mtXRW4PaPTdU2AIYCUhr52SGMgZQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    .line 220
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    new-instance v1, Lcom/batescorp/pebble/nav/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/MainActivity$3;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->startSetup(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 231
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 431
    :try_start_0
    const-string v0, "MainActivity"

    const-string v1, "checkConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 433
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->c()V

    .line 439
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 441
    const-string v1, "com.google.android.apps.maps"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 442
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const v4, 0x7f0600c1

    invoke-virtual {p0, v4}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/batescorp/pebble/nav/util/StringUtil;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const v1, 0x7f0600c1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batescorp/pebble/nav/util/StringUtil;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->d:Landroid/app/AlertDialog;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 454
    :cond_1
    :goto_1
    return-void

    .line 434
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->d()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 466
    :try_start_0
    invoke-static {p0}, Lcom/batescorp/pebble/nav/util/SystemUtil;->notificationEnable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 474
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 479
    :cond_0
    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 469
    const-string v2, "MainActivity"

    const-string v3, "notificationEnable failed "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->e()Z

    move-result v0

    .line 489
    if-nez v0, :cond_0

    .line 490
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    const-string v1, "Accessibility Access"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility Service must be enabled for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060076

    .line 498
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 499
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/batescorp/pebble/nav/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/MainActivity$5;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    .line 500
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 511
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 516
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    .line 520
    const-string v0, "com.batescorp.pebble.nav/com.batescorp.pebble.nav.service.NavAccessibilityService"

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 524
    :try_start_1
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCESSIBILITY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    :goto_0
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3a

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 531
    if-ne v0, v1, :cond_2

    .line 532
    const-string v0, "MainActivity"

    const-string v4, "***ACCESSIBILIY IS ENABLED***: "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enabled_accessibility_services"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v3, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 539
    :cond_0
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 541
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v4, "com.batescorp.pebble.nav/com.batescorp.pebble.nav.service.NavAccessibilityService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "MainActivity"

    const-string v2, "We\'ve found the correct setting - accessibility is switched on!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 553
    :goto_1
    return v0

    .line 525
    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v2

    .line 526
    :goto_2
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error finding setting, default accessibility to not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    :cond_1
    const-string v0, "MainActivity"

    const-string v1, "***END***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v2

    .line 553
    goto :goto_1

    .line 551
    :cond_2
    const-string v0, "MainActivity"

    const-string v1, "***ACCESSIBILIY IS DISABLED***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 525
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public checkLicense()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 386
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 387
    const v1, 0x7f0d0057

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 391
    const-class v3, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 392
    const-string v3, "com.batescorp.pebble.nav.RELOAD"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 395
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;

    move-result-object v2

    .line 397
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->checkedForLicense()Z

    move-result v3

    if-nez v3, :cond_1

    .line 398
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isTrial()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->expireString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0600d2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isFullLicense()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    const v0, 0x7f0600d0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 575
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "MainActivity"

    const-string v1, "onClick - buyLicenseButton  "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "application_product_key"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iget-object v3, p0, Lcom/batescorp/pebble/nav/MainActivity;->h:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    const-string v1, "MainActivity"

    const-string v2, "Failed to purchase"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->dispose()V

    .line 584
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->setContentView(I)V

    .line 188
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 189
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->b:Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;

    .line 193
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d004f

    new-instance v2, Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;

    invoke-direct {v2}, Lcom/batescorp/pebble/nav/MainActivity$PlaceholderFragment;-><init>()V

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 198
    :cond_0
    sput-object p0, Lcom/batescorp/pebble/nav/MainActivity;->g:Landroid/app/Activity;

    .line 200
    new-instance v0, Lcom/batescorp/pebble/nav/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/MainActivity$a;-><init>(Lcom/batescorp/pebble/nav/MainActivity;Lcom/batescorp/pebble/nav/MainActivity$1;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->i:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->a:Landroid/content/IntentFilter;

    .line 202
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->a:Landroid/content/IntentFilter;

    const-string v1, "pebble.nav.checkpaid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->a()V

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x270f

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 214
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/appindexing/AppIndex;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 215
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 255
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 271
    const v2, 0x7f0d0068

    if-ne v0, v2, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/batescorp/pebble/nav/settings/SettingsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 329
    :goto_0
    return v0

    .line 275
    :cond_0
    const v2, 0x7f0d0069

    if-ne v0, v2, :cond_1

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_1
    const v2, 0x7f0d006a

    if-ne v0, v2, :cond_3

    .line 281
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v2, 0x22b8

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    move v0, v1

    .line 290
    goto :goto_0

    .line 288
    :cond_2
    invoke-static {p0}, Lcom/batescorp/pebble/nav/service/DevEmailIntentService;->startSendEmail(Landroid/content/Context;)V

    goto :goto_1

    .line 293
    :cond_3
    const v2, 0x7f0d006b

    if-ne v0, v2, :cond_4

    .line 296
    sget-object v2, Lcom/batescorp/pebble/nav/MainActivity;->g:Landroid/app/Activity;

    const-string v3, "pebble.pbw"

    invoke-static {v2, v3}, Lcom/batescorp/pebble/nav/lib/PebbleUtils;->sendToPebbleFromResource(Landroid/app/Activity;Ljava/lang/String;)V

    .line 299
    :cond_4
    const v2, 0x7f0d006c

    if-ne v0, v2, :cond_5

    .line 300
    sget-object v2, Lcom/batescorp/pebble/nav/MainActivity;->g:Landroid/app/Activity;

    const-string v3, "pebble.pbw"

    invoke-static {v2, v3}, Lcom/batescorp/pebble/nav/lib/PebbleUtils;->sendToDownloads(Landroid/app/Activity;Ljava/lang/String;)V

    .line 303
    :cond_5
    const v2, 0x7f0d006d

    if-ne v0, v2, :cond_6

    .line 304
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    const v2, 0x7f060079

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v1

    .line 307
    goto :goto_0

    .line 310
    :cond_6
    const v1, 0x7f0d006e

    if-ne v0, v1, :cond_7

    .line 311
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_9

    .line 312
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v1, v4}, Lcom/batescorp/pebble/nav/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    :cond_7
    :goto_2
    const v1, 0x7f0d006f

    if-ne v0, v1, :cond_8

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 329
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0

    .line 315
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_7

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v1, v4}, Lcom/batescorp/pebble/nav/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 338
    const/16 v0, 0x22b8

    if-ne p1, v0, :cond_0

    .line 340
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget v2, p3, v0

    .line 341
    if-eqz v2, :cond_1

    .line 347
    :cond_0
    :goto_1
    return-void

    .line 340
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {p0}, Lcom/batescorp/pebble/nav/service/DevEmailIntentService;->startSendEmail(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume - type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "unlock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/batescorp/pebble/nav/activity/UnlockActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v2, "uri"

    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->i:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/MainActivity;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/MainActivity;->b()V

    .line 170
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->checkLicense()V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const v2, 0x7f0d0054

    const/4 v4, 0x0

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 77
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 79
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->c:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "Main Page"

    const-string v2, "http://host/path"

    .line 93
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.batescorp.pebble.nav/http/host/path"

    .line 95
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 87
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/MainActivity;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/appindexing/AppIndexApi;->start(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const-string v1, "Google Maps Version Invalid"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Maps must be at least version \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600c1

    .line 108
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/batescorp/pebble/nav/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/MainActivity$1;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->d:Landroid/app/AlertDialog;

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v1, "Notification Access"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification access must be enabled for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060076

    .line 132
    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/batescorp/pebble/nav/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/MainActivity$2;-><init>(Lcom/batescorp/pebble/nav/MainActivity;)V

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->e:Landroid/app/AlertDialog;

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 355
    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "Main Page"

    const-string v2, "http://host/path"

    .line 361
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.batescorp.pebble.nav/http/host/path"

    .line 363
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 355
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/appindexing/Action;->newAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/MainActivity;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/appindexing/AppIndexApi;->end(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/appindexing/Action;)Lcom/google/android/gms/common/api/PendingResult;

    .line 366
    iget-object v0, p0, Lcom/batescorp/pebble/nav/MainActivity;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 367
    return-void
.end method
