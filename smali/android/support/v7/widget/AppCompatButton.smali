.class public Landroid/support/v7/widget/AppCompatButton;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private final a:Landroid/support/v7/internal/widget/TintManager;

.field private final b:Lga;

.field private final c:Lgc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Landroid/support/v7/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->a:Landroid/support/v7/internal/widget/TintManager;

    .line 67
    new-instance v0, Lga;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatButton;->a:Landroid/support/v7/internal/widget/TintManager;

    invoke-direct {v0, p0, v1}, Lga;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/TintManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0, p2, p3}, Lga;->a(Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lgc;

    invoke-direct {v0, p0}, Lgc;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    .line 71
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    invoke-virtual {v0, p2, p3}, Lgc;->a(Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0}, Lga;->c()V

    .line 148
    :cond_0
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

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
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0}, Lga;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 161
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 167
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/drawable/Drawable;)V

    .line 88
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
    .line 76
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    invoke-virtual {v0, p1}, Lgc;->a(Z)V

    .line 183
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
    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/content/res/ColorStateList;)V

    .line 101
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
    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->b:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatButton;->c:Lgc;

    invoke-virtual {v0, p1, p2}, Lgc;->a(Landroid/content/Context;I)V

    .line 156
    :cond_0
    return-void
.end method
