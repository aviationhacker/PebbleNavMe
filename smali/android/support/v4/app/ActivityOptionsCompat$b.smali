.class Landroid/support/v4/app/ActivityOptionsCompat$b;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lq;


# direct methods
.method constructor <init>(Lq;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$b;->a:Lq;

    .line 182
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$b;->a:Lq;

    invoke-virtual {v0}, Lq;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    .prologue
    .line 191
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$b;

    if-eqz v0, :cond_0

    .line 192
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$b;

    .line 193
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$b;->a:Lq;

    iget-object v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$b;->a:Lq;

    invoke-virtual {v0, v1}, Lq;->a(Lq;)V

    .line 195
    :cond_0
    return-void
.end method
