.class Landroid/support/v4/app/ActivityCompat21;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompat21$a;,
        Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
    }
.end annotation


# direct methods
.method private static a(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Landroid/support/v4/app/ActivityCompat21$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat21$a;-><init>(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 36
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 41
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 50
    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompat21;->a(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 46
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 54
    return-void
.end method
