.class public Lbq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    .line 24
    return-void
.end method
