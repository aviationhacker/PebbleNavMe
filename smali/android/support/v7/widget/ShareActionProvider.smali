.class public Landroid/support/v7/widget/ShareActionProvider;
.super Landroid/support/v4/view/ActionProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ShareActionProvider$1;,
        Landroid/support/v7/widget/ShareActionProvider$a;,
        Landroid/support/v7/widget/ShareActionProvider$b;,
        Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field private a:I

.field private final b:Landroid/support/v7/widget/ShareActionProvider$b;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private f:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/widget/ShareActionProvider;->a:I

    .line 129
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ShareActionProvider$b;-><init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Landroid/support/v7/widget/ShareActionProvider$b;

    .line 145
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    .line 159
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->e:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->f:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ShareActionProvider$a;-><init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->f:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 346
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 347
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->f:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 367
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/ShareActionProvider;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->e:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    return-object v0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .prologue
    .line 182
    new-instance v0, Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    .line 189
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionModeShareDrawable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/ActionProvider;)V

    .line 196
    sget v1, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 198
    sget v1, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 201
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v2

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 223
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivityCount()I

    move-result v4

    .line 224
    iget v0, p0, Landroid/support/v7/widget/ShareActionProvider;->a:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v1

    .line 227
    :goto_0
    if-ge v0, v5, :cond_0

    .line 228
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 229
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Landroid/support/v7/widget/ShareActionProvider$b;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    if-ge v5, v4, :cond_1

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    sget v6, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v5, v5, v0}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v5

    move v0, v1

    .line 239
    :goto_1
    if-ge v0, v4, :cond_1

    .line 240
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 241
    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v5, v1, v0, v0, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v6, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->b:Landroid/support/v7/widget/ShareActionProvider$b;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->e:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 173
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->a()V

    .line 174
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->a()V

    .line 283
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 302
    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ShareActionProvider;->a(Landroid/content/Intent;)V

    .line 308
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->c:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 310
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 311
    return-void
.end method
