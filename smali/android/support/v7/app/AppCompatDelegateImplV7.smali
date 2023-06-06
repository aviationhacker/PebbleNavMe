.class public Landroid/support/v7/app/AppCompatDelegateImplV7;
.super Lfn;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV7$c;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$a;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$d;,
        Landroid/support/v7/app/AppCompatDelegateImplV7$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

.field private E:Z

.field private F:I

.field private final G:Ljava/lang/Runnable;

.field private H:Z

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/support/v7/internal/app/AppCompatViewInflater;

.field m:Landroid/support/v7/view/ActionMode;

.field n:Landroid/support/v7/internal/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private r:Landroid/support/v7/internal/widget/DecorContentParent;

.field private s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

.field private t:Landroid/support/v7/app/AppCompatDelegateImplV7$d;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lfn;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 121
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    .line 144
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    return v0
.end method

.method private a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1456
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1457
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1458
    if-eqz v0, :cond_1

    .line 1459
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1461
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-object v0, v1

    .line 1464
    :cond_2
    aget-object v1, v0, p1

    .line 1465
    if-nez v1, :cond_3

    .line 1466
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1468
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1443
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    .line 1444
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1445
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1446
    aget-object v1, v3, v2

    .line 1447
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1451
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1444
    goto :goto_0

    .line 1445
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1451
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1315
    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1316
    return-void
.end method

.method private a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1416
    if-nez p3, :cond_1

    .line 1418
    if-nez p2, :cond_0

    .line 1419
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1420
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->C:[Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1424
    :cond_0
    if-eqz p2, :cond_1

    .line 1426
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1431
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_3

    .line 1440
    :cond_2
    :goto_0
    return-void

    .line 1434
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1438
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 983
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_2

    .line 990
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 991
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 992
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 994
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 997
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 1002
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1003
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1005
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 992
    goto :goto_1

    :cond_4
    move v4, v3

    .line 994
    goto :goto_2

    .line 1009
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1010
    if-eqz v8, :cond_0

    .line 1015
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_c

    .line 1021
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 1023
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1031
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1036
    if-nez v0, :cond_e

    .line 1037
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1040
    :goto_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->b:I

    .line 1041
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1043
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1045
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1047
    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1054
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 1065
    :cond_a
    :goto_5
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1067
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->d:I

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->e:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1074
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1075
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1077
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    goto/16 :goto_0

    .line 1025
    :cond_b
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1027
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 1056
    :cond_c
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1059
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1319
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1326
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1329
    if-eqz p2, :cond_2

    .line 1330
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1334
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1335
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1336
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1339
    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1345
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1346
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method private a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1301
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Z

    if-eqz v0, :cond_0

    .line 1312
    :goto_0
    return-void

    .line 1305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Z

    .line 1306
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1307
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1309
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1311
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->B:Z

    goto :goto_0
.end method

.method private a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1089
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1093
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1096
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1098
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1100
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1101
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1104
    :cond_2
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1108
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1110
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1111
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1130
    :cond_3
    :goto_0
    return-void

    .line 1115
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1116
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1117
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1118
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1124
    :cond_5
    invoke-direct {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1126
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1127
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1129
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 1082
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/content/Context;)V

    .line 1083
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$c;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$c;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->g:Landroid/view/ViewGroup;

    .line 1084
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->c:I

    .line 1085
    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1473
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1483
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1486
    :cond_3
    if-eqz v0, :cond_0

    .line 1488
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1489
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    return p1
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 919
    if-nez p1, :cond_3

    move v0, v2

    .line 936
    :goto_0
    return v0

    .line 938
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 924
    :goto_1
    if-nez v1, :cond_1

    .line 929
    const/4 v0, 0x1

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v0, v2

    .line 936
    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    return p1
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1497
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->F:I

    .line 1499
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1501
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->E:Z

    .line 1503
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->k()V

    return-void
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1133
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    .line 1136
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_4

    .line 1138
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1139
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1140
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1142
    const/4 v0, 0x0

    .line 1143
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1144
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1146
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1147
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1154
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1155
    if-nez v0, :cond_1

    .line 1156
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1157
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1159
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1162
    if-eqz v2, :cond_4

    .line 1163
    new-instance v0, Landroid/support/v7/internal/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1164
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1168
    :goto_1
    new-instance v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1169
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 1170
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 1172
    return v5

    .line 1150
    :cond_3
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1197
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return v2

    .line 1202
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1203
    goto :goto_0

    .line 1206
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1208
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1211
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1213
    if-eqz v3, :cond_4

    .line 1214
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    .line 1217
    :cond_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1220
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 1223
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 1226
    :cond_6
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/internal/app/ToolbarActionBar;

    if-nez v4, :cond_12

    .line 1230
    :cond_7
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v4, :cond_e

    .line 1231
    :cond_8
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 1232
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1237
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v4, :cond_b

    .line 1238
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    if-nez v4, :cond_a

    .line 1239
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    invoke-direct {v4, p0, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$a;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    .line 1241
    :cond_a
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 1246
    :cond_b
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1247
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1249
    invoke-virtual {p1, v7}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 1251
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1217
    goto :goto_1

    .line 1259
    :cond_d
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1264
    :cond_e
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1268
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1269
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1270
    iput-object v7, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1274
    :cond_f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1275
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_10

    .line 1278
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->s:Landroid/support/v7/app/AppCompatDelegateImplV7$a;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 1280
    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1285
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    .line 1288
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->p:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1289
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1293
    :cond_12
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1294
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    .line 1295
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move v2, v1

    .line 1297
    goto/16 :goto_0

    .line 1285
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1287
    goto :goto_3
.end method

.method static synthetic c(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1506
    invoke-direct {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1508
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 1509
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1510
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1511
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1512
    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->s:Landroid/os/Bundle;

    .line 1515
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1516
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->clear()V

    .line 1518
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    .line 1519
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->q:Z

    .line 1522
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    .line 1524
    invoke-direct {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_3

    .line 1526
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1527
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1530
    :cond_3
    return-void
.end method

.method private c(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1176
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->i:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1193
    :goto_0
    return v1

    .line 1181
    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    move v1, v2

    .line 1182
    goto :goto_0

    .line 1185
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$d;

    if-nez v0, :cond_2

    .line 1186
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$d;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7$d;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$d;

    .line 1189
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->t:Landroid/support/v7/app/AppCompatDelegateImplV7$d;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .line 1191
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    .line 1193
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->h:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1539
    .line 1541
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1542
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1543
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1547
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1548
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1549
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    .line 1550
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->J:Landroid/graphics/Rect;

    .line 1552
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->I:Landroid/graphics/Rect;

    .line 1553
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->J:Landroid/graphics/Rect;

    .line 1554
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1556
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1557
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1558
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1560
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1562
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1563
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    .line 1564
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1566
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1580
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1586
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1596
    :goto_3
    if-eqz v3, :cond_2

    .line 1597
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1601
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1602
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1557
    goto :goto_0

    .line 1570
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1571
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1572
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1573
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->y:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1580
    goto :goto_2

    .line 1591
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1593
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1602
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method static synthetic d(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(I)V

    return-void
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1351
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 1353
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v1, :cond_0

    .line 1354
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)I
    .locals 2

    .prologue
    .line 1616
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1617
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const/16 p1, 0x6c

    .line 1626
    :cond_0
    :goto_0
    return p1

    .line 1620
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1621
    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1362
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1411
    :goto_0
    return v0

    .line 1367
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    .line 1368
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1371
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1372
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1373
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    .line 1402
    :goto_1
    if-eqz v2, :cond_1

    .line 1403
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1405
    if-eqz v0, :cond_6

    .line 1406
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1411
    goto :goto_0

    .line 1376
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1379
    :cond_3
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    if-eqz v0, :cond_5

    .line 1382
    :cond_4
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    .line 1384
    invoke-direct {p0, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    move v2, v0

    goto :goto_1

    .line 1385
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    if-eqz v0, :cond_7

    .line 1387
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->r:Z

    if-eqz v0, :cond_8

    .line 1390
    iput-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 1391
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1394
    :goto_3
    if-eqz v0, :cond_7

    .line 1396
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1408
    :cond_6
    const-string v0, "AppCompatDelegate"

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-nez v0, :cond_2

    .line 278
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->i()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->f()Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->j()V

    .line 288
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/ViewGroup;)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    .line 297
    invoke-direct {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->j:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_2

    .line 299
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(I)V

    .line 302
    :cond_2
    return-void
.end method

.method private i()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 305
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 307
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 319
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 322
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    .line 325
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    .line 326
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 332
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    if-nez v1, :cond_a

    .line 333
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    if-eqz v1, :cond_5

    .line 335
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 339
    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    move-object v2, v0

    .line 420
    :goto_1
    if-nez v2, :cond_d

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 340
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_11

    .line 346
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 347
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 350
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 351
    new-instance v0, Landroid/support/v7/internal/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 357
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 360
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    .line 362
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 367
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    if-eqz v1, :cond_6

    .line 368
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v1, v6}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    .line 370
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    if-eqz v1, :cond_7

    .line 371
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    .line 373
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    if-eqz v1, :cond_8

    .line 374
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    :cond_8
    move-object v2, v0

    .line 376
    goto/16 :goto_1

    .line 353
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto :goto_2

    .line 378
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    if-eqz v1, :cond_b

    .line 379
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 385
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 388
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 382
    :cond_b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 410
    check-cast v0, Landroid/support/v7/internal/widget/FitWindowsViewGroup;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV7$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 431
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-nez v0, :cond_e

    .line 432
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    .line 436
    :cond_e
    invoke-static {v2}, Landroid/support/v7/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 439
    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 444
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 445
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 446
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 447
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 451
    :cond_f
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 455
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 456
    invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setId(I)V

    .line 460
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    .line 461
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 464
    :cond_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private j()V
    .locals 5

    .prologue
    .line 470
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 476
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 480
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 481
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 482
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 484
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 487
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 490
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 493
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    sget v2, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 496
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    .line 499
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 790
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1609
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-eqz v0, :cond_0

    .line 1610
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1613
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 658
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->k()V

    .line 659
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 663
    :cond_0
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$b;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 665
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 667
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v0, v4}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    if-eqz v0, :cond_3

    .line 674
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 780
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 783
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    return-object v0

    .line 668
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_4

    .line 677
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Z

    if-eqz v0, :cond_6

    .line 679
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 680
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 681
    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 684
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_5

    .line 685
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 686
    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 687
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 689
    new-instance v0, Landroid/support/v7/internal/view/ContextThemeWrapper;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v2}, Landroid/support/v7/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 690
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 695
    :goto_2
    new-instance v6, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 696
    new-instance v6, Landroid/widget/PopupWindow;

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v6, v0, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    .line 698
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 700
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 701
    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 703
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 705
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 707
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 708
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 709
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$4;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    .line 743
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 744
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->k()V

    .line 745
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 746
    new-instance v5, Landroid/support/v7/internal/view/StandaloneActionMode;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-direct {v5, v6, v7, v4, v0}, Landroid/support/v7/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 748
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 749
    invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 750
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 751
    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 752
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 753
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 754
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->q:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV7$5;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV7$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 772
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 692
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 733
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ViewStubCompat;

    .line 735
    if-eqz v0, :cond_4

    .line 737
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 738
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 746
    goto :goto_4

    .line 776
    :cond_8
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_1

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 974
    if-eqz v0, :cond_0

    .line 978
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 173
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 178
    new-instance v1, Landroid/support/v7/internal/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    .line 183
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 181
    new-instance v1, Landroid/support/v7/internal/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method a(ILandroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 576
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 577
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    if-nez p1, :cond_0

    .line 584
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v0

    .line 585
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v1, :cond_0

    .line 586
    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->r:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 812
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 813
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    .line 819
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 820
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 822
    if-eqz v2, :cond_2

    .line 823
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->n:Z

    goto :goto_0

    .line 834
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->D:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    if-nez v2, :cond_3

    .line 835
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 836
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 837
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 838
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->m:Z

    .line 839
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 843
    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 848
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 850
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    :goto_0
    return v0

    .line 855
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 856
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 857
    if-nez v2, :cond_1

    .line 859
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 857
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 859
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 271
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 272
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 274
    return-void
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 863
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 878
    :goto_0
    return v0

    .line 865
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 868
    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(IZ)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v2

    .line 869
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->o:Z

    if-eqz v3, :cond_1

    .line 870
    invoke-direct {p0, v2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_0

    .line 873
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 863
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method b(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 593
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 594
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 600
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    packed-switch p1, :pswitch_data_0

    .line 891
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 894
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(ILandroid/view/KeyEvent;)Z

    .line 896
    :cond_0
    return v2

    .line 884
    :pswitch_0
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 882
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 904
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/internal/app/AppCompatViewInflater;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Landroid/support/v7/internal/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/internal/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/internal/app/AppCompatViewInflater;

    .line 909
    :cond_0
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 912
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->K:Landroid/support/v7/internal/app/AppCompatViewInflater;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/internal/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 902
    goto :goto_0

    :cond_2
    move v5, v1

    .line 909
    goto :goto_1
.end method

.method g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 806
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 801
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFeature(I)Z
    .locals 2

    .prologue
    .line 545
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)I

    move-result v0

    .line 546
    sparse-switch v0, :sswitch_data_0

    .line 560
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    :goto_0
    return v0

    .line 548
    :sswitch_0
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    goto :goto_0

    .line 550
    :sswitch_1
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    goto :goto_0

    .line 552
    :sswitch_2
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    goto :goto_0

    .line 554
    :sswitch_3
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    goto :goto_0

    .line 556
    :sswitch_4
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    goto :goto_0

    .line 558
    :sswitch_5
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    goto :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public installViewFactory()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 945
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 946
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 951
    :goto_0
    return-void

    .line 948
    :cond_0
    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->u:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->v:Landroid/view/ViewGroup;

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    .line 155
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->H:Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_0

    .line 966
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e()Landroid/view/Window$Callback;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 607
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 608
    if-eqz v1, :cond_0

    .line 609
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 618
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 167
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 503
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->e(I)I

    move-result v2

    .line 505
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 540
    :goto_0
    return v0

    .line 508
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 510
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    .line 513
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 540
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 515
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 516
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->h:Z

    move v0, v1

    .line 517
    goto :goto_0

    .line 519
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 520
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->i:Z

    move v0, v1

    .line 521
    goto :goto_0

    .line 523
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 524
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Z

    move v0, v1

    .line 525
    goto :goto_0

    .line 527
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 528
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->z:Z

    move v0, v1

    .line 529
    goto :goto_0

    .line 531
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 532
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->A:Z

    move v0, v1

    .line 533
    goto :goto_0

    .line 535
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()V

    .line 536
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Z

    move v0, v1

    .line 537
    goto :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 252
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 253
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 255
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 257
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 248
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->h()V

    .line 262
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 264
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 266
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 196
    instance-of v0, v0, Landroid/support/v7/internal/app/WindowDecorActionBar;

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->g:Landroid/view/MenuInflater;

    .line 204
    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 206
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->f:Landroid/support/v7/app/ActionBar;

    .line 207
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 208
    invoke-virtual {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    goto :goto_0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 630
    :cond_1
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV7$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$b;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 632
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 635
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_2

    .line 636
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Landroid/support/v7/app/AppCompatCallback;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 640
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    if-nez v1, :cond_3

    .line 642
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    .line 645
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method
