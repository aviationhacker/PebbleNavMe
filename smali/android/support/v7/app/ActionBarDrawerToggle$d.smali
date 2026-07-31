.class Landroid/support/v7/app/ActionBarDrawerToggle$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Lfm$a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$d;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lfm;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->b:Lfm$a;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lfm;->a(Lfm$a;Landroid/app/Activity;I)Lfm$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->b:Lfm$a;

    .line 547
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 538
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->b:Lfm$a;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lfm;->a(Lfm$a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lfm$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->b:Lfm$a;

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 541
    return-void
.end method
