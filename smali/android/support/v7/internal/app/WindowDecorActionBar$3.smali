.class Landroid/support/v7/internal/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$3;->a:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/app/WindowDecorActionBar$3;->a:Landroid/support/v7/internal/app/WindowDecorActionBar;

    invoke-static {v0}, Landroid/support/v7/internal/app/WindowDecorActionBar;->c(Landroid/support/v7/internal/app/WindowDecorActionBar;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 167
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 168
    return-void
.end method
