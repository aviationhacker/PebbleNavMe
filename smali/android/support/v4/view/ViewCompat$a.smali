.class Landroid/support/v4/view/ViewCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 864
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 865
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 867
    if-nez v3, :cond_1

    move v0, v1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    if-gez p2, :cond_2

    .line 869
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 593
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->b:Ljava/lang/reflect/Method;

    .line 595
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$a;->d:Z

    .line 601
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v2

    .line 877
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    if-nez v3, :cond_1

    move v0, v1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    if-gez p2, :cond_2

    .line 881
    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 883
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public A(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x0

    return v0
.end method

.method public C(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public D(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public E(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Lda;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public F(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 655
    invoke-static {p1}, Lda;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public G(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1

    .prologue
    .line 660
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public H(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public I(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public J(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    return-object v0
.end method

.method public K(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public L(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public M(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public N(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public O(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x0

    return-object v0
.end method

.method public P(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public Q(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public R(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public S(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 837
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 845
    invoke-static {p1}, Lda;->a(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public U(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 860
    invoke-static {p1}, Lda;->b(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public V(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 896
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 897
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 899
    :cond_0
    return-void
.end method

.method public W(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 903
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 904
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    .line 906
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 949
    invoke-static {p1}, Lda;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public Y(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$a;->N(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$a;->M(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public Z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 964
    invoke-static {p1}, Lda;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 954
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 509
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .prologue
    .line 806
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 440
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 850
    invoke-static {p1, p2}, Lda;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 851
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 855
    invoke-static {p1, p2}, Lda;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 856
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$a;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$a;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public a(Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 941
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 942
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    .line 944
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;FFZ)Z
    .locals 1

    .prologue
    .line 932
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 933
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    .line 936
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 397
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$a;->a(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;IIII[I)Z
    .locals 6

    .prologue
    .line 912
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 913
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    .line 916
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;II[I[I)Z
    .locals 1

    .prologue
    .line 922
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 923
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .prologue
    .line 811
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public b(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 550
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 401
    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$a;->b(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 437
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public d(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public e(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 830
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 831
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 833
    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public g(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public g(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public g(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public h(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 888
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 889
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    .line 891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public k(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public l(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public l(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 505
    :cond_0
    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 554
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$a;->d:Z

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$a;->b()V

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 559
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public t(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$a;->d:Z

    if-nez v0, :cond_0

    .line 572
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$a;->b()V

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 576
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public u(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public v(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public w(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public x(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method
