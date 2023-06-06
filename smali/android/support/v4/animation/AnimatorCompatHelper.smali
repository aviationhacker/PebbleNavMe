.class public abstract Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Lg;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lh;

    invoke-direct {v0}, Lh;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Lg;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static clearInterpolator(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Lg;

    invoke-interface {v0, p0}, Lg;->a(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public static emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->a:Lg;

    invoke-interface {v0}, Lg;->a()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
