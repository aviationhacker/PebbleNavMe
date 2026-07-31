.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$b;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/ListAdapter;

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/os/Handler;

.field private final N:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/app/AppCompatDialog;

.field private final c:Landroid/view/Window;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/os/Message;

.field private q:Landroid/widget/Button;

.field private r:Ljava/lang/CharSequence;

.field private s:Landroid/os/Message;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/widget/ScrollView;

.field private x:I

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v3, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 89
    iput v3, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController;->E:I

    .line 108
    iput v3, p0, Landroid/support/v7/app/AlertController;->L:I

    .line 112
    new-instance v0, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    .line 169
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    .line 171
    iput-object p3, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    .line 172
    new-instance v0, Landroid/support/v7/app/AlertController$a;

    invoke-direct {v0, p2}, Landroid/support/v7/app/AlertController$a;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    .line 174
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->F:I

    .line 178
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->G:I

    .line 180
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->H:I

    .line 181
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->I:I

    .line 182
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->J:I

    .line 184
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->K:I

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Landroid/support/v7/app/AlertController;->E:I

    return p1
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    return-object p1
.end method

.method private a(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 609
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 610
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 163
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 165
    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :goto_0
    return v0

    .line 194
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 200
    :cond_2
    if-lez v2, :cond_3

    .line 201
    add-int/lit8 v2, v2, -0x1

    .line 202
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    invoke-static {v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 472
    .line 474
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 479
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    invoke-virtual {p1, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 483
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 518
    :goto_0
    return v0

    .line 485
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    .line 487
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 488
    :goto_1
    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    .line 491
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget v0, p0, Landroid/support/v7/app/AlertController;->x:I

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v7/app/AlertController;->x:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 487
    goto :goto_1

    .line 498
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_0

    .line 503
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 507
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    .line 511
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 512
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v2

    .line 515
    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, -0x1

    .line 522
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    .line 523
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 526
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 539
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 540
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 541
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Landroid/support/v7/app/AlertController;->G:I

    if-nez v0, :cond_0

    .line 222
    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    .line 227
    :goto_0
    return v0

    .line 224
    :cond_0
    iget v0, p0, Landroid/support/v7/app/AlertController;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    iget v0, p0, Landroid/support/v7/app/AlertController;->G:I

    goto :goto_0

    .line 227
    :cond_1
    iget v0, p0, Landroid/support/v7/app/AlertController;->F:I

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    const/high16 v10, 0x20000

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 407
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 408
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->b(Landroid/view/ViewGroup;)V

    .line 409
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->e()Z

    move-result v3

    .line 411
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 412
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v7, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-static {v4, v5, v6, v7, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v4

    .line 414
    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/view/ViewGroup;)Z

    .line 416
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    if-nez v3, :cond_0

    .line 418
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 427
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 428
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 436
    :goto_0
    if-eqz v3, :cond_1

    move v1, v2

    .line 437
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 438
    :cond_2
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 442
    :cond_3
    if-eqz v1, :cond_9

    .line 443
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 444
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-boolean v3, p0, Landroid/support/v7/app/AlertController;->m:Z

    if-eqz v3, :cond_4

    .line 447
    iget v3, p0, Landroid/support/v7/app/AlertController;->i:I

    iget v5, p0, Landroid/support/v7/app/AlertController;->j:I

    iget v6, p0, Landroid/support/v7/app/AlertController;->k:I

    iget v7, p0, Landroid/support/v7/app/AlertController;->l:I

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 451
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    .line 452
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 458
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    .line 459
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_6

    .line 460
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    iget v1, p0, Landroid/support/v7/app/AlertController;->E:I

    .line 462
    if-le v1, v8, :cond_6

    .line 463
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 468
    :cond_6
    invoke-virtual {v4}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 469
    return-void

    .line 429
    :cond_7
    iget v3, p0, Landroid/support/v7/app/AlertController;->h:I

    if-eqz v3, :cond_8

    .line 430
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 431
    iget v5, p0, Landroid/support/v7/app/AlertController;->h:I

    invoke-virtual {v3, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 433
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 455
    :cond_9
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    return-object v0
.end method

.method private e()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 550
    .line 551
    const/4 v4, 0x2

    .line 552
    const/4 v5, 0x4

    .line 554
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    .line 555
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 565
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    .line 566
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->c:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    .line 578
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/AlertController;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    if-ne v1, v3, :cond_4

    .line 595
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    .line 603
    :cond_0
    :goto_3
    if-eqz v1, :cond_6

    :goto_4
    return v3

    .line 560
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 562
    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 574
    or-int/2addr v1, v4

    goto :goto_1

    .line 583
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    or-int/2addr v1, v5

    goto :goto_2

    .line 596
    :cond_4
    if-ne v1, v4, :cond_5

    .line 597
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 598
    :cond_5
    if-ne v1, v5, :cond_0

    .line 599
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v3, v2

    .line 603
    goto :goto_4
.end method

.method static synthetic f(Landroid/support/v7/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/app/AlertController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/AlertController;->H:I

    return v0
.end method

.method static synthetic j(Landroid/support/v7/app/AlertController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/AlertController;->I:I

    return v0
.end method

.method static synthetic k(Landroid/support/v7/app/AlertController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/AlertController;->J:I

    return v0
.end method

.method static synthetic l(Landroid/support/v7/app/AlertController;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/support/v7/app/AlertController;->K:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 215
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->c()I

    move-result v0

    .line 216
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->b:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 217
    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->d()V

    .line 218
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 256
    iput p1, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 258
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 305
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->M:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 309
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->o:Ljava/lang/CharSequence;

    .line 313
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->p:Landroid/os/Message;

    .line 329
    :goto_0
    return-void

    .line 317
    :pswitch_1
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->r:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->s:Landroid/os/Message;

    goto :goto_0

    .line 322
    :pswitch_2
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->u:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Landroid/support/v7/app/AlertController;->v:Landroid/os/Message;

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 356
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 359
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 360
    if-eqz p1, :cond_1

    .line 361
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 277
    iput p2, p0, Landroid/support/v7/app/AlertController;->i:I

    .line 278
    iput p3, p0, Landroid/support/v7/app/AlertController;->j:I

    .line 279
    iput p4, p0, Landroid/support/v7/app/AlertController;->k:I

    .line 280
    iput p5, p0, Landroid/support/v7/app/AlertController;->l:I

    .line 281
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 232
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    .line 339
    iput p1, p0, Landroid/support/v7/app/AlertController;->x:I

    .line 341
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 342
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->z:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->C:Landroid/view/View;

    .line 242
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    iget-object v1, p0, Landroid/support/v7/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 376
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object p1, p0, Landroid/support/v7/app/AlertController;->g:Landroid/view/View;

    .line 265
    iput v0, p0, Landroid/support/v7/app/AlertController;->h:I

    .line 266
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->m:Z

    .line 267
    return-void
.end method

.method public d(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 392
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->n:Landroid/widget/Button;

    goto :goto_0

    .line 388
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->q:Landroid/widget/Button;

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->t:Landroid/widget/Button;

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
