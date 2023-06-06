.class public Lfu;
.super Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 36
    return-void
.end method


# virtual methods
.method a(Landroid/view/ActionProvider;)Landroid/support/v7/internal/view/menu/MenuItemWrapperICS$a;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lfu$a;

    iget-object v1, p0, Lfu;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lfu$a;-><init>(Lfu;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
