.class Landroid/support/v7/widget/ActionMenuPresenter$b;
.super Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->h(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
