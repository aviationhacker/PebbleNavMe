.class public Lbv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method
