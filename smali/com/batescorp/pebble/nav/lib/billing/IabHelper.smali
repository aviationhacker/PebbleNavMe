.class public Lcom/batescorp/pebble/nav/lib/billing/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;,
        Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;,
        Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/vending/billing/IInAppBillingService;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c:Z

    .line 81
    iput-boolean v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    .line 84
    iput-boolean v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z

    .line 88
    iput-boolean v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->f:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->g:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->m:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->m:Ljava/lang/String;

    .line 166
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 751
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 764
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 766
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 767
    rsub-int v0, p0, -0x3e8

    .line 768
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 774
    :goto_0
    return-object v0

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4

    .prologue
    .line 804
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    if-nez v0, :cond_0

    .line 806
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0

    .line 809
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 812
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 788
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    if-nez v0, :cond_0

    .line 790
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 791
    const/4 v0, 0x0

    .line 794
    :goto_0
    return v0

    .line 793
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 794
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 796
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    move v1, v3

    .line 851
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 852
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 855
    invoke-virtual {p0, v6}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Owned items response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 857
    if-eqz v0, :cond_1

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    move v3, v0

    .line 903
    :cond_0
    :goto_1
    return v3

    .line 861
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 862
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 863
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 864
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 865
    const/16 v3, -0x3ea

    goto :goto_1

    .line 868
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 870
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 872
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 875
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 876
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 877
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 878
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 879
    iget-object v10, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->m:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 880
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 881
    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/Purchase;

    invoke-direct {v2, p2, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 884
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e(Ljava/lang/String;)V

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 889
    :cond_4
    invoke-virtual {p1, v2}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a(Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    .line 875
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 892
    :cond_5
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e(Ljava/lang/String;)V

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Purchase data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 895
    const/4 v4, 0x1

    goto :goto_3

    .line 899
    :cond_6
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continuation token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 901
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 903
    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/batescorp/pebble/nav/lib/billing/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 908
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 909
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {p2, p1}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 911
    if-eqz p3, :cond_1

    .line 912
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 914
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 920
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    move v0, v1

    .line 949
    :goto_1
    return v0

    .line 924
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 925
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 926
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 929
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 930
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 931
    if-eqz v0, :cond_3

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 936
    :cond_3
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 937
    const/16 v0, -0x3ea

    goto :goto_1

    .line 941
    :cond_4
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 945
    new-instance v3, Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;

    invoke-direct {v3, p1, v0}, Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2, v3}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->a(Lcom/batescorp/pebble/nav/lib/billing/SkuDetails;)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 949
    goto :goto_1
.end method

.method a()V
    .locals 2

    .prologue
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 838
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->g:Ljava/lang/String;

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->f:Z

    .line 840
    return-void
.end method

.method a(Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V
    .locals 5

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 658
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 660
    iget-object v0, p1, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 668
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 670
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    new-instance v1, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 674
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 676
    if-nez v0, :cond_3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 687
    return-void

    .line 680
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 681
    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c:Z

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batescorp/pebble/nav/lib/billing/Purchase;",
            ">;",
            "Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;",
            "Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 956
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 957
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b(Ljava/lang/String;)V

    .line 958
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$3;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 987
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 988
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->f:Z

    if-eqz v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->g:Ljava/lang/String;

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->f:Z

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    return-void
.end method

.method public consumeAsync(Lcom/batescorp/pebble/nav/lib/billing/Purchase;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;)V
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 726
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 730
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/batescorp/pebble/nav/lib/billing/Purchase;",
            ">;",
            "Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 739
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeFinishedListener;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 741
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c:Z

    .line 290
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    .line 295
    iput-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    .line 296
    iput-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 297
    iput-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 298
    iput-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 299
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 180
    iput-boolean p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a:Z

    .line 181
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 174
    iput-boolean p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a:Z

    .line 175
    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 439
    iget v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->k:I

    if-eq p1, v2, :cond_0

    .line 518
    :goto_0
    return v0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 442
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 447
    if-nez p3, :cond_2

    .line 448
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0, p3}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Landroid/content/Intent;)I

    move-result v2

    .line 455
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 459
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase data: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data signature: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected item type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 465
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 466
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    :cond_4
    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 475
    :cond_5
    :try_start_0
    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/Purchase;

    iget-object v5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/lib/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 479
    iget-object v6, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->m:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/batescorp/pebble/nav/lib/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 481
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signature verification failed for sku "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    :cond_6
    move v0, v1

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_8

    .line 496
    iget-object v3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 490
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    :cond_9
    move v0, v1

    .line 492
    goto/16 :goto_0

    .line 499
    :cond_a
    if-ne p2, v5, :cond_b

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_8

    .line 503
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    goto :goto_1

    .line 507
    :cond_b
    if-nez p2, :cond_c

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase canceled - Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    goto :goto_1

    .line 513
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase failed. Result code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    invoke-static {v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 515
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    goto/16 :goto_1
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    .prologue
    .line 333
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 338
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 371
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 372
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 373
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b(Ljava/lang/String;)V

    .line 376
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 380
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constructing buy intent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 387
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 388
    if-eqz v1, :cond_2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 391
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 392
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 409
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 411
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 412
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    goto/16 :goto_0

    .line 396
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 398
    iput p4, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->k:I

    .line 399
    iput-object p5, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->n:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 400
    iput-object p3, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->l:Ljava/lang/String;

    .line 401
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x0

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    .line 401
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a()V

    .line 419
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 420
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6

    .prologue
    .line 343
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 348
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/batescorp/pebble/nav/lib/billing/Inventory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batescorp/pebble/nav/lib/billing/Inventory;"
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/batescorp/pebble/nav/lib/billing/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/batescorp/pebble/nav/lib/billing/Inventory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batescorp/pebble/nav/lib/billing/Inventory;"
        }
    .end annotation

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 541
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 543
    :try_start_0
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/Inventory;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;-><init>()V

    .line 544
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 549
    :cond_0
    if-eqz p1, :cond_1

    .line 550
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/util/List;)I

    move-result v1

    .line 551
    if-eqz v1, :cond_1

    .line 552
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    :catch_1
    move-exception v0

    .line 577
    new-instance v1, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 557
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z

    if-eqz v1, :cond_3

    .line 558
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/lang/String;)I

    move-result v1

    .line 559
    if-eqz v1, :cond_2

    .line 560
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 563
    :cond_2
    if-eqz p1, :cond_3

    .line 564
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;Lcom/batescorp/pebble/nav/lib/billing/Inventory;Ljava/util/List;)I

    move-result v1

    .line 565
    if-eqz v1, :cond_3

    .line 566
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabException;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 571
    :cond_3
    return-object v0
.end method

.method public queryInventoryAsync(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2

    .prologue
    .line 639
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 640
    return-void
.end method

.method public queryInventoryAsync(ZLcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 644
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 609
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 610
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->a(Ljava/lang/String;)V

    .line 611
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b(Ljava/lang/String;)V

    .line 612
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$2;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 635
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method public startSetup(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 206
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;-><init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->j:Landroid/content/ServiceConnection;

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    if-eqz p1, :cond_1

    .line 274
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->b()V

    .line 308
    iget-boolean v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z

    return v0
.end method
