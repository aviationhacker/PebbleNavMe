.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarDrawerToggle$c;,
        Landroid/support/v7/app/ActionBarDrawerToggle$f;,
        Landroid/support/v7/app/ActionBarDrawerToggle$e;,
        Landroid/support/v7/app/ActionBarDrawerToggle$d;,
        Landroid/support/v7/app/ActionBarDrawerToggle$b;,
        Landroid/support/v7/app/ActionBarDrawerToggle$a;,
        Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

.field private final b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 7
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 181
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 183
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Landroid/support/v7/app/ActionBarDrawerToggle$b;",
            ">(",
            "Landroid/app/Activity;",
            "Landroid/support/v7/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->j:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$f;

    invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$f;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    .line 196
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :goto_0
    iput-object p3, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 217
    iput p5, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->g:I

    .line 218
    iput p6, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->h:I

    .line 219
    if-nez p4, :cond_4

    .line 220
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$a;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    .line 226
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    .line 227
    return-void

    .line 206
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 209
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$e;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$e;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 210
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 211
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$d;

    invoke-direct {v0, p1, v2}, Landroid/support/v7/app/ActionBarDrawerToggle$d;-><init>(Landroid/app/Activity;Landroid/support/v7/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$c;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 223
    :cond_4
    check-cast p4, Landroid/support/v7/app/ActionBarDrawerToggle$b;

    iput-object p4, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/app/ActionBarDrawerToggle;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->b()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 461
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->j:Z

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->a:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 457
    return-void
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->f:Z

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 265
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$b;->a(F)V

    .line 406
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 407
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->g:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$b;->a(F)V

    .line 391
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 392
    iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$b;->a(F)V

    .line 379
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->b()V

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-eq p1, v0, :cond_0

    .line 356
    if-eqz p1, :cond_2

    .line 357
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->h:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 363
    :goto_1
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    .line 365
    :cond_0
    return-void

    .line 357
    :cond_1
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->g:I

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    if-nez p1, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    .line 306
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->f:Z

    .line 312
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->d:Landroid/graphics/drawable/Drawable;

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->f:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->i:Landroid/view/View$OnClickListener;

    .line 447
    return-void
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 239
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$b;->a(F)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->h:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 249
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->c:Landroid/support/v7/app/ActionBarDrawerToggle$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle$b;->a(F)V

    goto :goto_0

    .line 245
    :cond_2
    iget v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->g:I

    goto :goto_1
.end method
