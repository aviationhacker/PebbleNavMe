.class public Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewGroupCompat$e;,
        Landroid/support/v4/view/ViewGroupCompat$d;,
        Landroid/support/v4/view/ViewGroupCompat$b;,
        Landroid/support/v4/view/ViewGroupCompat$a;,
        Landroid/support/v4/view/ViewGroupCompat$f;,
        Landroid/support/v4/view/ViewGroupCompat$c;
    }
.end annotation


# static fields
.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field static final a:Landroid/support/v4/view/ViewGroupCompat$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$e;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$e;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 145
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$d;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    goto :goto_0

    .line 146
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 147
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    goto :goto_0

    .line 148
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 149
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$f;

    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$f;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 215
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$c;->a(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 265
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$c;->c(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$c;->b(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 179
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewGroupCompat$c;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$c;->a(Landroid/view/ViewGroup;I)V

    .line 229
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$c;->a(Landroid/view/ViewGroup;Z)V

    .line 200
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 240
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->a:Landroid/support/v4/view/ViewGroupCompat$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$c;->b(Landroid/view/ViewGroup;Z)V

    .line 241
    return-void
.end method
