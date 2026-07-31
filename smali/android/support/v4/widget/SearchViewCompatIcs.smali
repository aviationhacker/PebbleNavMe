.class Landroid/support/v4/widget/SearchViewCompatIcs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 47
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 48
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 51
    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    .line 52
    return-void
.end method
