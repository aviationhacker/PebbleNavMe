.class Landroid/support/v7/app/NotificationCompat$c;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-static {p2, v0}, Landroid/support/v7/app/NotificationCompat;->b(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    .line 125
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
