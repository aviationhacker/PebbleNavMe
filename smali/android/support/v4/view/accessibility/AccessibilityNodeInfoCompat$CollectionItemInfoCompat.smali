.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionItemInfoCompat"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$1;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 8

    .prologue
    .line 423
    new-instance v7, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->a(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method


# virtual methods
.method public getColumnIndex()I
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->O(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getColumnSpan()I
    .locals 2

    .prologue
    .line 436
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->P(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRowIndex()I
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->Q(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRowSpan()I
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->R(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHeading()Z
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->S(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$d;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
