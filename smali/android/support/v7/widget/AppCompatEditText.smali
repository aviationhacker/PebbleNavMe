.class public Landroid/support/v7/widget/AppCompatEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private a:Landroid/support/v7/internal/widget/TintManager;

.field private b:Lga;

.field private c:Lgc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    sget v0, Landroid/support/v7/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Landroid/support/v7/internal/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->a:Landroid/support/v7/internal/widget/TintManager;

    .line 65
    new-instance v0, Lga;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatEditText;->a:Landroid/support/v7/internal/widget/TintManager;

    invoke-direct {v0, p0, v1}, Lga;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0, p2, p3}, Lga;->a(Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Lgc;

    invoke-direct {v0, p0}, Lgc;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lgc;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lgc;

    invoke-virtual {v0, p2, p3}, Lgc;->a(Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0}, Lga;->c()V

    .line 146
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0}, Lga;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0}, Lga;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lgc;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatEditText;->c:Lgc;

    invoke-virtual {v0, p1, p2}, Lgc;->a(Landroid/content/Context;I)V

    .line 154
    :cond_0
    return-void
.end method
