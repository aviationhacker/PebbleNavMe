.class public Landroid/support/v7/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Lgc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lgc;

    invoke-direct {v0, p0}, Lgc;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->a:Lgc;

    .line 51
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->a:Lgc;

    invoke-virtual {v0, p2, p3}, Lgc;->a(Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->a:Lgc;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->a:Lgc;

    invoke-virtual {v0, p1, p2}, Lgc;->a(Landroid/content/Context;I)V

    .line 60
    :cond_0
    return-void
.end method
