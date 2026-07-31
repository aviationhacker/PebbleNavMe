.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggle$1;,
        Landroid/support/v4/app/ActionBarDrawerToggle$e;,
        Landroid/support/v4/app/ActionBarDrawerToggle$d;,
        Landroid/support/v4/app/ActionBarDrawerToggle$c;,
        Landroid/support/v4/app/ActionBarDrawerToggle$b;,
        Landroid/support/v4/app/ActionBarDrawerToggle$a;,
        Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;,
        Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/ActionBarDrawerToggle$a;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

.field private final d:Landroid/support/v4/widget/DrawerLayout;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 178
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$d;

    invoke-direct {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$d;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 180
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$c;

    invoke-direct {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$c;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    goto :goto_0

    .line 182
    :cond_1
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$b;

    invoke-direct {v0, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$b;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7
    .param p3    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 229
    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V

    .line 231
    return-void

    .line 229
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
    .locals 3
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    .line 262
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    .line 265
    instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 266
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    .line 271
    :goto_0
    iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    .line 272
    iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->j:I

    .line 273
    iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    .line 274
    iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    .line 276
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    .line 278
    new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$e;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$e;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    .line 279
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    if-eqz p3, :cond_1

    const v0, 0x3eaaaaab

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->b(F)V

    .line 280
    return-void

    .line 268
    :cond_0
    iput-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->c:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->a:Landroid/support/v4/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$a;->a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->m:Ljava/lang/Object;

    goto :goto_0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->j:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->h:Landroid/graphics/drawable/Drawable;

    .line 392
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 393
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a(F)V

    .line 460
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 461
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(I)V

    .line 463
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a(F)V

    .line 445
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 426
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a()F

    move-result v0

    .line 427
    cmpl-float v1, p2, v2

    if-lez v1, :cond_0

    .line 428
    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 432
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a(F)V

    .line 433
    return-void

    .line 430
    :cond_0
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const v2, 0x800003

    .line 405
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 411
    :goto_0
    const/4 v0, 0x1

    .line 413
    :goto_1
    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    .prologue
    .line 360
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eq p1, v0, :cond_0

    .line 361
    if-eqz p1, :cond_2

    .line 362
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 367
    :goto_1
    iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    .line 369
    :cond_0
    return-void

    .line 362
    :cond_1
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 347
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 318
    iput-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    .line 324
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 327
    :cond_0
    return-void

    .line 320
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->g:Landroid/graphics/drawable/Drawable;

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->f:Z

    goto :goto_0
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 292
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a(F)V

    .line 298
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->e:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->l:I

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 302
    :cond_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->i:Landroid/support/v4/app/ActionBarDrawerToggle$e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$e;->a(F)V

    goto :goto_0

    .line 299
    :cond_2
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->k:I

    goto :goto_1
.end method
