package com.batescorp.pebble.nav.lib.billing;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jetty.util.URIUtil;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class IabHelper {
    public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    public static final int BILLING_RESPONSE_RESULT_OK = 0;
    public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    public static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    public static final String GET_SKU_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
    public static final int IABHELPER_BAD_RESPONSE = -1002;
    public static final int IABHELPER_ERROR_BASE = -1000;
    public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
    public static final int IABHELPER_MISSING_TOKEN = -1007;
    public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
    public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
    public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
    public static final int IABHELPER_UNKNOWN_ERROR = -1008;
    public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
    public static final int IABHELPER_USER_CANCELLED = -1005;
    public static final int IABHELPER_VERIFICATION_FAILED = -1003;
    public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final String ITEM_TYPE_INAPP = "inapp";
    public static final String ITEM_TYPE_SUBS = "subs";
    public static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    public static final String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    boolean a = true;
    String b = "IabHelper";
    boolean c = false;
    boolean d = false;
    boolean e = false;
    boolean f = false;
    String g = "";
    Context h;
    IInAppBillingService i;
    ServiceConnection j;
    int k;
    String l;
    String m;
    OnIabPurchaseFinishedListener n;

    public interface OnConsumeFinishedListener {
        void onConsumeFinished(Purchase purchase, IabResult iabResult);
    }

    public interface OnConsumeMultiFinishedListener {
        void onConsumeMultiFinished(List<Purchase> list, List<IabResult> list2);
    }

    public interface OnIabPurchaseFinishedListener {
        void onIabPurchaseFinished(IabResult iabResult, Purchase purchase);
    }

    public interface OnIabSetupFinishedListener {
        void onIabSetupFinished(IabResult iabResult);
    }

    public interface QueryInventoryFinishedListener {
        void onQueryInventoryFinished(IabResult iabResult, Inventory inventory);
    }

    public IabHelper(Context context, String str) {
        this.m = null;
        this.h = context.getApplicationContext();
        this.m = str;
        c("IAB helper created.");
    }

    public void enableDebugLogging(boolean z, String str) {
        b();
        this.a = z;
        this.b = str;
    }

    public void enableDebugLogging(boolean z) {
        b();
        this.a = z;
    }

    public void startSetup(final OnIabSetupFinishedListener onIabSetupFinishedListener) {
        b();
        if (this.c) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        c("Starting in-app billing setup.");
        this.j = new ServiceConnection() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                IabHelper.this.c("Billing service disconnected.");
                IabHelper.this.i = null;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (!IabHelper.this.d) {
                    IabHelper.this.c("Billing service connected.");
                    IabHelper.this.i = IInAppBillingService.Stub.asInterface(iBinder);
                    String packageName = IabHelper.this.h.getPackageName();
                    try {
                        IabHelper.this.c("Checking for in-app billing 3 support.");
                        int iIsBillingSupported = IabHelper.this.i.isBillingSupported(3, packageName, IabHelper.ITEM_TYPE_INAPP);
                        if (iIsBillingSupported != 0) {
                            if (onIabSetupFinishedListener != null) {
                                onIabSetupFinishedListener.onIabSetupFinished(new IabResult(iIsBillingSupported, "Error checking for billing v3 support."));
                            }
                            IabHelper.this.e = false;
                            return;
                        }
                        IabHelper.this.c("In-app billing version 3 supported for " + packageName);
                        int iIsBillingSupported2 = IabHelper.this.i.isBillingSupported(3, packageName, IabHelper.ITEM_TYPE_SUBS);
                        if (iIsBillingSupported2 == 0) {
                            IabHelper.this.c("Subscriptions AVAILABLE.");
                            IabHelper.this.e = true;
                        } else {
                            IabHelper.this.c("Subscriptions NOT AVAILABLE. Response: " + iIsBillingSupported2);
                        }
                        IabHelper.this.c = true;
                        if (onIabSetupFinishedListener != null) {
                            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(0, "Setup successful."));
                        }
                    } catch (RemoteException e) {
                        if (onIabSetupFinishedListener != null) {
                            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(IabHelper.IABHELPER_REMOTE_EXCEPTION, "RemoteException while setting up in-app billing."));
                        }
                        e.printStackTrace();
                    }
                }
            }
        };
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        if (!this.h.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
            this.h.bindService(intent, this.j, 1);
        } else if (onIabSetupFinishedListener != null) {
            onIabSetupFinishedListener.onIabSetupFinished(new IabResult(3, "Billing service unavailable on device."));
        }
    }

    public void dispose() {
        c("Disposing.");
        this.c = false;
        if (this.j != null) {
            c("Unbinding from service.");
            if (this.h != null && this.i != null) {
                this.h.unbindService(this.j);
            }
        }
        this.d = true;
        this.h = null;
        this.j = null;
        this.i = null;
        this.n = null;
    }

    private void b() {
        if (this.d) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    public boolean subscriptionsSupported() {
        b();
        return this.e;
    }

    public void launchPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        launchPurchaseFlow(activity, str, i, onIabPurchaseFinishedListener, "");
    }

    public void launchPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str2) {
        launchPurchaseFlow(activity, str, ITEM_TYPE_INAPP, i, onIabPurchaseFinishedListener, str2);
    }

    public void launchSubscriptionPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener) {
        launchSubscriptionPurchaseFlow(activity, str, i, onIabPurchaseFinishedListener, "");
    }

    public void launchSubscriptionPurchaseFlow(Activity activity, String str, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str2) {
        launchPurchaseFlow(activity, str, ITEM_TYPE_SUBS, i, onIabPurchaseFinishedListener, str2);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00b3 -> B:26:0x002b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00b5 -> B:26:0x002b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0139 -> B:26:0x002b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x013b -> B:26:0x002b). Please report as a decompilation issue!!! */
    public void launchPurchaseFlow(Activity activity, String str, String str2, int i, OnIabPurchaseFinishedListener onIabPurchaseFinishedListener, String str3) {
        b();
        a("launchPurchaseFlow");
        b("launchPurchaseFlow");
        if (str2.equals(ITEM_TYPE_SUBS) && !this.e) {
            IabResult iabResult = new IabResult(IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE, "Subscriptions are not available.");
            a();
            if (onIabPurchaseFinishedListener != null) {
                onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult, null);
                return;
            }
            return;
        }
        try {
            c("Constructing buy intent for " + str + ", item type: " + str2);
            Bundle buyIntent = this.i.getBuyIntent(3, this.h.getPackageName(), str, str2, str3);
            int iA = a(buyIntent);
            if (iA != 0) {
                d("Unable to buy item, Error response: " + getResponseDesc(iA));
                a();
                IabResult iabResult2 = new IabResult(iA, "Unable to buy item");
                if (onIabPurchaseFinishedListener != null) {
                    onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult2, null);
                }
            } else {
                PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable(RESPONSE_BUY_INTENT);
                c("Launching buy intent for " + str + ". Request code: " + i);
                this.k = i;
                this.n = onIabPurchaseFinishedListener;
                this.l = str2;
                IntentSender intentSender = pendingIntent.getIntentSender();
                Intent intent = new Intent();
                Integer num = 0;
                int iIntValue = num.intValue();
                Integer num2 = 0;
                int iIntValue2 = num2.intValue();
                Integer num3 = 0;
                activity.startIntentSenderForResult(intentSender, i, intent, iIntValue, iIntValue2, num3.intValue());
            }
        } catch (IntentSender.SendIntentException e) {
            d("SendIntentException while launching purchase flow for sku " + str);
            e.printStackTrace();
            a();
            IabResult iabResult3 = new IabResult(IABHELPER_SEND_INTENT_FAILED, "Failed to send intent.");
            if (onIabPurchaseFinishedListener != null) {
                onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult3, null);
            }
        } catch (RemoteException e2) {
            d("RemoteException while launching purchase flow for sku " + str);
            e2.printStackTrace();
            a();
            IabResult iabResult4 = new IabResult(IABHELPER_REMOTE_EXCEPTION, "Remote exception while starting purchase flow");
            if (onIabPurchaseFinishedListener != null) {
                onIabPurchaseFinishedListener.onIabPurchaseFinished(iabResult4, null);
            }
        }
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        if (i != this.k) {
            return false;
        }
        b();
        a("handleActivityResult");
        a();
        if (intent == null) {
            d("Null data in IAB activity result.");
            IabResult iabResult = new IabResult(IABHELPER_BAD_RESPONSE, "Null data in IAB result");
            if (this.n != null) {
                this.n.onIabPurchaseFinished(iabResult, null);
            }
            return true;
        }
        int iA = a(intent);
        String stringExtra = intent.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
        String stringExtra2 = intent.getStringExtra(RESPONSE_INAPP_SIGNATURE);
        if (i2 == -1 && iA == 0) {
            c("Successful resultcode from purchase activity.");
            c("Purchase data: " + stringExtra);
            c("Data signature: " + stringExtra2);
            c("Extras: " + intent.getExtras());
            c("Expected item type: " + this.l);
            if (stringExtra == null || stringExtra2 == null) {
                d("BUG: either purchaseData or dataSignature is null.");
                c("Extras: " + intent.getExtras().toString());
                IabResult iabResult2 = new IabResult(IABHELPER_UNKNOWN_ERROR, "IAB returned null purchaseData or dataSignature");
                if (this.n != null) {
                    this.n.onIabPurchaseFinished(iabResult2, null);
                }
                return true;
            }
            try {
                Purchase purchase = new Purchase(this.l, stringExtra, stringExtra2);
                String sku = purchase.getSku();
                if (!Security.verifyPurchase(this.m, stringExtra, stringExtra2)) {
                    d("Purchase signature verification FAILED for sku " + sku);
                    IabResult iabResult3 = new IabResult(IABHELPER_VERIFICATION_FAILED, "Signature verification failed for sku " + sku);
                    if (this.n != null) {
                        this.n.onIabPurchaseFinished(iabResult3, purchase);
                    }
                    return true;
                }
                c("Purchase signature successfully verified.");
                if (this.n != null) {
                    this.n.onIabPurchaseFinished(new IabResult(0, "Success"), purchase);
                }
            } catch (JSONException e) {
                d("Failed to parse purchase data.");
                e.printStackTrace();
                IabResult iabResult4 = new IabResult(IABHELPER_BAD_RESPONSE, "Failed to parse purchase data.");
                if (this.n != null) {
                    this.n.onIabPurchaseFinished(iabResult4, null);
                }
                return true;
            }
        } else if (i2 == -1) {
            c("Result code was OK but in-app billing response was not OK: " + getResponseDesc(iA));
            if (this.n != null) {
                this.n.onIabPurchaseFinished(new IabResult(iA, "Problem purchashing item."), null);
            }
        } else if (i2 == 0) {
            c("Purchase canceled - Response: " + getResponseDesc(iA));
            IabResult iabResult5 = new IabResult(IABHELPER_USER_CANCELLED, "User canceled.");
            if (this.n != null) {
                this.n.onIabPurchaseFinished(iabResult5, null);
            }
        } else {
            d("Purchase failed. Result code: " + Integer.toString(i2) + ". Response: " + getResponseDesc(iA));
            IabResult iabResult6 = new IabResult(IABHELPER_UNKNOWN_PURCHASE_RESPONSE, "Unknown purchase response.");
            if (this.n != null) {
                this.n.onIabPurchaseFinished(iabResult6, null);
            }
        }
        return true;
    }

    public Inventory queryInventory(boolean z, List<String> list) {
        return queryInventory(z, list, null);
    }

    public Inventory queryInventory(boolean z, List<String> list, List<String> list2) throws IabException {
        int iA;
        int iA2;
        b();
        a("queryInventory");
        try {
            Inventory inventory = new Inventory();
            int iA3 = a(inventory, ITEM_TYPE_INAPP);
            if (iA3 != 0) {
                throw new IabException(iA3, "Error refreshing inventory (querying owned items).");
            }
            if (z && (iA2 = a(ITEM_TYPE_INAPP, inventory, list)) != 0) {
                throw new IabException(iA2, "Error refreshing inventory (querying prices of items).");
            }
            if (this.e) {
                int iA4 = a(inventory, ITEM_TYPE_SUBS);
                if (iA4 != 0) {
                    throw new IabException(iA4, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (z && (iA = a(ITEM_TYPE_SUBS, inventory, list)) != 0) {
                    throw new IabException(iA, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return inventory;
        } catch (RemoteException e) {
            throw new IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new IabException(IABHELPER_BAD_RESPONSE, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    public void queryInventoryAsync(final boolean z, final List<String> list, final QueryInventoryFinishedListener queryInventoryFinishedListener) {
        final Handler handler = new Handler();
        b();
        a("queryInventory");
        b("refresh inventory");
        new Thread(new Runnable() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.2
            @Override // java.lang.Runnable
            public void run() {
                final IabResult iabResult = new IabResult(0, "Inventory refresh successful.");
                final Inventory inventoryQueryInventory = null;
                try {
                    inventoryQueryInventory = IabHelper.this.queryInventory(z, list);
                } catch (IabException e) {
                    iabResult = e.getResult();
                }
                IabHelper.this.a();
                if (!IabHelper.this.d && queryInventoryFinishedListener != null) {
                    handler.post(new Runnable() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            queryInventoryFinishedListener.onQueryInventoryFinished(iabResult, inventoryQueryInventory);
                        }
                    });
                }
            }
        }).start();
    }

    public void queryInventoryAsync(QueryInventoryFinishedListener queryInventoryFinishedListener) {
        queryInventoryAsync(true, null, queryInventoryFinishedListener);
    }

    public void queryInventoryAsync(boolean z, QueryInventoryFinishedListener queryInventoryFinishedListener) {
        queryInventoryAsync(z, null, queryInventoryFinishedListener);
    }

    void a(Purchase purchase) throws IabException {
        b();
        a("consume");
        if (!purchase.a.equals(ITEM_TYPE_INAPP)) {
            throw new IabException(IABHELPER_INVALID_CONSUMPTION, "Items of type '" + purchase.a + "' can't be consumed.");
        }
        try {
            String token = purchase.getToken();
            String sku = purchase.getSku();
            if (token == null || token.equals("")) {
                d("Can't consume " + sku + ". No token.");
                throw new IabException(IABHELPER_MISSING_TOKEN, "PurchaseInfo is missing token for sku: " + sku + " " + purchase);
            }
            c("Consuming sku: " + sku + ", token: " + token);
            int iConsumePurchase = this.i.consumePurchase(3, this.h.getPackageName(), token);
            if (iConsumePurchase == 0) {
                c("Successfully consumed sku: " + sku);
            } else {
                c("Error consuming consuming sku " + sku + ". " + getResponseDesc(iConsumePurchase));
                throw new IabException(iConsumePurchase, "Error consuming sku " + sku);
            }
        } catch (RemoteException e) {
            throw new IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while consuming. PurchaseInfo: " + purchase, e);
        }
    }

    public void consumeAsync(Purchase purchase, OnConsumeFinishedListener onConsumeFinishedListener) {
        b();
        a("consume");
        ArrayList arrayList = new ArrayList();
        arrayList.add(purchase);
        a(arrayList, onConsumeFinishedListener, (OnConsumeMultiFinishedListener) null);
    }

    public void consumeAsync(List<Purchase> list, OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        b();
        a("consume");
        a(list, (OnConsumeFinishedListener) null, onConsumeMultiFinishedListener);
    }

    public static String getResponseDesc(int i) {
        String[] strArrSplit = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split(URIUtil.SLASH);
        String[] strArrSplit2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split(URIUtil.SLASH);
        if (i <= -1000) {
            int i2 = (-1000) - i;
            return (i2 < 0 || i2 >= strArrSplit2.length) ? String.valueOf(i) + ":Unknown IAB Helper Error" : strArrSplit2[i2];
        }
        if (i < 0 || i >= strArrSplit.length) {
            return String.valueOf(i) + ":Unknown";
        }
        return strArrSplit[i];
    }

    void a(String str) {
        if (!this.c) {
            d("Illegal state for operation (" + str + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + str);
        }
    }

    int a(Bundle bundle) {
        Object obj = bundle.get(RESPONSE_CODE);
        if (obj == null) {
            c("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        d("Unexpected type for bundle response code.");
        d(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
    }

    int a(Intent intent) {
        Object obj = intent.getExtras().get(RESPONSE_CODE);
        if (obj == null) {
            d("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        d("Unexpected type for intent response code.");
        d(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for intent response code: " + obj.getClass().getName());
    }

    void b(String str) {
        if (this.f) {
            throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.g + ") is in progress.");
        }
        this.g = str;
        this.f = true;
        c("Starting async operation: " + str);
    }

    void a() {
        c("Ending async operation: " + this.g);
        this.g = "";
        this.f = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x00ac, code lost:
    
        d("Bundle returned from getPurchases() doesn't contain required fields.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return com.batescorp.pebble.nav.lib.billing.IabHelper.IABHELPER_BAD_RESPONSE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int a(com.batescorp.pebble.nav.lib.billing.Inventory r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.lib.billing.IabHelper.a(com.batescorp.pebble.nav.lib.billing.Inventory, java.lang.String):int");
    }

    int a(String str, Inventory inventory, List<String> list) {
        c("Querying SKU details.");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(inventory.a(str));
        if (list != null) {
            for (String str2 : list) {
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            c("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(GET_SKU_DETAILS_ITEM_LIST, arrayList);
        Bundle skuDetails = this.i.getSkuDetails(3, this.h.getPackageName(), str, bundle);
        if (!skuDetails.containsKey(RESPONSE_GET_SKU_DETAILS_LIST)) {
            int iA = a(skuDetails);
            if (iA != 0) {
                c("getSkuDetails() failed: " + getResponseDesc(iA));
                return iA;
            }
            d("getSkuDetails() returned a bundle with neither an error nor a detail list.");
            return IABHELPER_BAD_RESPONSE;
        }
        Iterator<String> it = skuDetails.getStringArrayList(RESPONSE_GET_SKU_DETAILS_LIST).iterator();
        while (it.hasNext()) {
            SkuDetails skuDetails2 = new SkuDetails(str, it.next());
            c("Got sku details: " + skuDetails2);
            inventory.a(skuDetails2);
        }
        return 0;
    }

    void a(final List<Purchase> list, final OnConsumeFinishedListener onConsumeFinishedListener, final OnConsumeMultiFinishedListener onConsumeMultiFinishedListener) {
        final Handler handler = new Handler();
        b("consume");
        new Thread(new Runnable() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.3
            @Override // java.lang.Runnable
            public void run() {
                final ArrayList arrayList = new ArrayList();
                for (Purchase purchase : list) {
                    try {
                        IabHelper.this.a(purchase);
                        arrayList.add(new IabResult(0, "Successful consume of sku " + purchase.getSku()));
                    } catch (IabException e) {
                        arrayList.add(e.getResult());
                    }
                }
                IabHelper.this.a();
                if (!IabHelper.this.d && onConsumeFinishedListener != null) {
                    handler.post(new Runnable() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onConsumeFinishedListener.onConsumeFinished((Purchase) list.get(0), (IabResult) arrayList.get(0));
                        }
                    });
                }
                if (!IabHelper.this.d && onConsumeMultiFinishedListener != null) {
                    handler.post(new Runnable() { // from class: com.batescorp.pebble.nav.lib.billing.IabHelper.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            onConsumeMultiFinishedListener.onConsumeMultiFinished(list, arrayList);
                        }
                    });
                }
            }
        }).start();
    }

    void c(String str) {
        if (this.a) {
            Log.d(this.b, str);
        }
    }

    void d(String str) {
        Log.e(this.b, "In-app billing error: " + str);
    }

    void e(String str) {
        Log.w(this.b, "In-app billing warning: " + str);
    }
}
