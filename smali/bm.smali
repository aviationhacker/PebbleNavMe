.class public Lbm;
.super Landroid/support/v4/media/MediaDescriptionCompatApi21;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbm$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    check-cast p0, Landroid/media/MediaDescription;

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
