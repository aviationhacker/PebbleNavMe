.class final Landroid/support/v4/media/session/MediaSessionCompat$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->a:Ljava/lang/String;

    .line 1729
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->b:Landroid/os/Bundle;

    .line 1730
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;->c:Landroid/os/ResultReceiver;

    .line 1731
    return-void
.end method
