.class Landroid/support/v4/media/MediaMetadataCompatApi21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0}, Landroid/media/MediaMetadata;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 35
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
