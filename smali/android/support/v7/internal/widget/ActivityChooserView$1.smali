.class Landroid/support/v7/internal/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 131
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ActivityChooserView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView$a;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView$1;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/ActivityChooserView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView$a;->notifyDataSetInvalidated()V

    .line 137
    return-void
.end method
