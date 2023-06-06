.class Landroid/support/v4/app/ActivityOptionsCompat$a;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lp;


# direct methods
.method constructor <init>(Lp;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 202
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$a;->a:Lp;

    .line 203
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$a;->a:Lp;

    invoke-virtual {v0}, Lp;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    .prologue
    .line 212
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$a;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$a;

    .line 215
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$a;->a:Lp;

    iget-object v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$a;->a:Lp;

    invoke-virtual {v0, v1}, Lp;->a(Lp;)V

    .line 217
    :cond_0
    return-void
.end method
