.class Landroid/support/v7/widget/ListPopupWindow$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$f;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow$a;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow$a;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow$a;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->b:I

    if-gt v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/widget/ListPopupWindow;->b(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1729
    iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$f;->a:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1731
    :cond_0
    return-void
.end method
