.class public Landroid/support/v7/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# instance fields
.field a:[I

.field b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field h:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 179
    invoke-virtual {p0, p1}, Landroid/support/v7/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 180
    return-void
.end method


# virtual methods
.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->h:Landroid/app/PendingIntent;

    .line 239
    return-object p0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 199
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 190
    return-object p0
.end method

.method public setShowCancelButton(Z)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->c:Z

    .line 228
    return-object p0
.end method
