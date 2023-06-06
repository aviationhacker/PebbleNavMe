.class Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V
    .locals 1

    .prologue
    .line 594
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;->a:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;->b:Z

    .line 606
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;->b:Z

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$2;->a:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->a(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 601
    :cond_0
    return-void
.end method
