.class public Lfb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 28
    check-cast p0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
