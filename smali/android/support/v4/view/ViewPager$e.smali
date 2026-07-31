.class Landroid/support/v4/view/ViewPager$e;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2904
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$e;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V
    .locals 0

    .prologue
    .line 2904
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager$e;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$e;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2908
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2911
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$e;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()V

    .line 2912
    return-void
.end method
