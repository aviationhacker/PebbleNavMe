.class public Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/TintManager;

.field private c:Lga;

.field private d:Lgc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {p1}, Landroid/support/v7/internal/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/TintManager;

    .line 73
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 78
    new-instance v0, Lga;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/TintManager;

    invoke-direct {v0, p0, v1}, Lga;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0, p2, p3}, Lga;->a(Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Lgc;

    invoke-direct {v0, p0}, Lgc;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lgc;

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lgc;

    invoke-virtual {v0, p2, p3}, Lgc;->a(Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0}, Lga;->c()V

    .line 168
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

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
    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

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
    .line 104
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/drawable/Drawable;)V

    .line 108
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
    .line 96
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0, p1}, Lga;->a(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/TintManager;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/content/res/ColorStateList;)V

    .line 121
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
    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->c:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lgc;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->d:Lgc;

    invoke-virtual {v0, p1, p2}, Lgc;->a(Landroid/content/Context;I)V

    .line 176
    :cond_0
    return-void
.end method
