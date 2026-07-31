.class public Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$1;,
        Landroid/support/v7/widget/ActionMenuPresenter$b;,
        Landroid/support/v7/widget/ActionMenuPresenter$c;,
        Landroid/support/v7/widget/ActionMenuPresenter$f;,
        Landroid/support/v7/widget/ActionMenuPresenter$a;,
        Landroid/support/v7/widget/ActionMenuPresenter$e;,
        Landroid/support/v7/widget/ActionMenuPresenter$d;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/ActionMenuPresenter$f;

.field b:I

.field private c:Landroid/support/v7/widget/ActionMenuPresenter$d;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private final p:Landroid/util/SparseBooleanArray;

.field private q:Landroid/view/View;

.field private r:Landroid/support/v7/widget/ActionMenuPresenter$e;

.field private s:Landroid/support/v7/widget/ActionMenuPresenter$a;

.field private t:Landroid/support/v7/widget/ActionMenuPresenter$c;

.field private u:Landroid/support/v7/widget/ActionMenuPresenter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$f;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->a:Landroid/support/v7/widget/ActionMenuPresenter$f;

    .line 89
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$a;)Landroid/support/v7/widget/ActionMenuPresenter$a;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$c;)Landroid/support/v7/widget/ActionMenuPresenter$c;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/ActionMenuPresenter$e;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)Landroid/support/v7/widget/ActionMenuPresenter$e;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/ActionMenuPresenter$e;

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 308
    if-nez v0, :cond_1

    move-object v2, v3

    .line 318
    :cond_0
    :goto_0
    return-object v2

    .line 310
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 311
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_3

    .line 312
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 313
    instance-of v1, v2, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 311
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 318
    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$c;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    return-object v0
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 212
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 213
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/ActionMenuPresenter$b;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/ActionMenuPresenter$b;

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 219
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 368
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 369
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 21

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 405
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 406
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->j:I

    .line 407
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/ActionMenuPresenter;->i:I

    .line 408
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    .line 411
    const/4 v6, 0x0

    .line 412
    const/4 v5, 0x0

    .line 413
    const/4 v8, 0x0

    .line 414
    const/4 v4, 0x0

    .line 415
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 416
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 417
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 424
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 427
    const/4 v3, 0x0

    .line 415
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 422
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 432
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 434
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 436
    :cond_4
    sub-int v10, v7, v6

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->p:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 439
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 441
    const/4 v4, 0x0

    .line 442
    const/4 v3, 0x0

    .line 443
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v5, :cond_1d

    .line 444
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    div-int v3, v9, v3

    .line 445
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    rem-int v4, v9, v4

    .line 446
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    div-int/2addr v4, v3

    add-int/2addr v4, v5

    move v5, v4

    .line 450
    :goto_3
    const/4 v4, 0x0

    move v12, v4

    move v7, v8

    move v4, v3

    :goto_4
    if-ge v12, v14, :cond_17

    .line 451
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 453
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 455
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    if-nez v8, :cond_5

    .line 456
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    .line 458
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v8, :cond_7

    .line 459
    const/4 v8, 0x0

    invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v8

    sub-int/2addr v4, v8

    .line 464
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 465
    sub-int v8, v9, v6

    .line 466
    if-nez v7, :cond_1c

    .line 469
    :goto_6
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v7

    .line 470
    if-eqz v7, :cond_6

    .line 471
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 473
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v3, v8

    move v7, v10

    .line 450
    :goto_7
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v9, v3

    move v10, v7

    move v7, v6

    goto :goto_4

    .line 462
    :cond_7
    invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 474
    :cond_8
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 477
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v17

    .line 478
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 479
    if-gtz v10, :cond_9

    if-eqz v18, :cond_e

    :cond_9
    if-lez v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v6, :cond_a

    if-lez v4, :cond_e

    :cond_a
    const/4 v6, 0x1

    .line 482
    :goto_8
    if-eqz v6, :cond_1b

    .line 483
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 484
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    if-nez v8, :cond_b

    .line 485
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    .line 487
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v8, :cond_f

    .line 488
    const/4 v8, 0x0

    invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    .line 490
    sub-int v8, v4, v19

    .line 491
    if-nez v19, :cond_1a

    .line 492
    const/4 v4, 0x0

    :goto_9
    move v6, v8

    .line 497
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 498
    sub-int/2addr v9, v8

    .line 499
    if-nez v7, :cond_c

    move v7, v8

    .line 503
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    if-eqz v8, :cond_11

    .line 504
    if-ltz v9, :cond_10

    const/4 v8, 0x1

    :goto_b
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    .line 511
    :goto_c
    if-eqz v11, :cond_13

    if-eqz v17, :cond_13

    .line 512
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v4, v10

    .line 526
    :goto_d
    if-eqz v11, :cond_d

    add-int/lit8 v4, v4, -0x1

    .line 528
    :cond_d
    invoke-virtual {v3, v11}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v6, v8

    move v3, v9

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    .line 529
    goto :goto_7

    .line 479
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 495
    :cond_f
    invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V

    move/from16 v20, v6

    move v6, v4

    move/from16 v4, v20

    goto :goto_a

    .line 504
    :cond_10
    const/4 v8, 0x0

    goto :goto_b

    .line 507
    :cond_11
    add-int v8, v9, v7

    if-lez v8, :cond_12

    const/4 v8, 0x1

    :goto_e
    and-int/2addr v4, v8

    move v11, v4

    move v8, v7

    move v7, v6

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    goto :goto_e

    .line 513
    :cond_13
    if-eqz v18, :cond_19

    .line 515
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 516
    const/4 v4, 0x0

    move v6, v10

    move v10, v4

    :goto_f
    if-ge v10, v12, :cond_18

    .line 517
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 518
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 520
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v18

    if-eqz v18, :cond_14

    add-int/lit8 v6, v6, 0x1

    .line 521
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 516
    :cond_15
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_f

    .line 531
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v6, v7

    move v3, v9

    move v7, v10

    goto/16 :goto_7

    .line 534
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v4, v6

    goto :goto_d

    :cond_19
    move v4, v10

    goto :goto_d

    :cond_1a
    move v4, v6

    goto/16 :goto_9

    :cond_1b
    move v11, v6

    move v8, v7

    move v7, v4

    goto :goto_c

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 201
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_2
    return-object v0

    .line 197
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .locals 2

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v1

    move-object v0, v1

    .line 187
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 188
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 178
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->e:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    move v0, v1

    .line 359
    :goto_0
    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/ActionMenuPresenter$e;

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->dismiss()V

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 98
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Z

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    .line 102
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 107
    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:I

    .line 111
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 112
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    if-eqz v2, :cond_5

    .line 113
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez v2, :cond_4

    .line 114
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    .line 115
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->e:Z

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->d:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->e:Z

    .line 120
    :cond_3
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 121
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v3, v2, v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->measure(II)V

    .line 123
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 128
    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->i:I

    .line 130
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->o:I

    .line 133
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->q:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_5
    iput-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/ActionMenuPresenter$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 540
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 541
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:I

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 552
    check-cast p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    .line 553
    iget v0, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->a:I

    if-lez v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget v1, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 557
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 560
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 546
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->a:I

    .line 547
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 303
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 289
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 293
    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    .line 298
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->b:I

    .line 299
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$a;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Landroid/support/v7/widget/ActionMenuPresenter$a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    .line 300
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->setAnchorView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->show()V

    .line 302
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 303
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 566
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    .line 164
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    .prologue
    .line 158
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->j:I

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    .line 160
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 573
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 575
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->e:Z

    .line 171
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    .prologue
    .line 153
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->g:Z

    .line 155
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    .prologue
    .line 147
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 148
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->l:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->m:Z

    .line 150
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 326
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$e;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ActionMenuPresenter$e;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 329
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$c;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    .line 331
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 335
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 339
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Landroid/support/v7/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 234
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 239
    :goto_0
    if-ge v3, v5, :cond_2

    .line 240
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 239
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 253
    if-ne v3, v1, :cond_9

    .line 254
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    move v2, v0

    .line 260
    :cond_3
    :goto_3
    if-eqz v2, :cond_b

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_4

    .line 262
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$d;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$d;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    .line 264
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 265
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eq v0, v1, :cond_6

    .line 266
    if-eqz v0, :cond_5

    .line 267
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 270
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :cond_6
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->f:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 277
    return-void

    .line 247
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v0, v2

    .line 254
    goto :goto_2

    .line 256
    :cond_9
    if-lez v3, :cond_a

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_a
    move v1, v2

    goto :goto_5

    .line 272
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-ne v0, v1, :cond_6

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->c:Landroid/support/v7/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
