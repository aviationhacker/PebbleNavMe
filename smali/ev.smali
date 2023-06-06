.class public Lev;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    return-void
.end method

.method public static b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
