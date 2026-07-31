.class public Lcb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lca;

    invoke-direct {v0, p0}, Lca;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
