.class Landroid/support/v4/widget/SwipeRefreshLayout$9;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->c(ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1112
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1113
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$9;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;F)V

    .line 1114
    return-void
.end method
