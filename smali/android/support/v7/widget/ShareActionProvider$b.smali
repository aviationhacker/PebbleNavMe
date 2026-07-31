.class Landroid/support/v7/widget/ShareActionProvider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ShareActionProvider;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ShareActionProvider;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider$b;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider$b;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider$b;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v0}, Landroid/support/v7/widget/ShareActionProvider;->a(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$b;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v1}, Landroid/support/v7/widget/ShareActionProvider;->b(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 322
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$b;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v1, v0}, Landroid/support/v7/widget/ShareActionProvider;->a(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)V

    .line 329
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider$b;->a:Landroid/support/v7/widget/ShareActionProvider;

    invoke-static {v1}, Landroid/support/v7/widget/ShareActionProvider;->a(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
