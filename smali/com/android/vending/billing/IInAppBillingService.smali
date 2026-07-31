.class public interface abstract Lcom/android/vending/billing/IInAppBillingService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IInAppBillingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
.end method
