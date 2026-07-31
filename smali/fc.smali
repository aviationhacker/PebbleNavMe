.class public Lfc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 27
    check-cast p0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
