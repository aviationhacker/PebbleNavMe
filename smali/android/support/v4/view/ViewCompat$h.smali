.class Landroid/support/v4/view/ViewCompat$h;
.super Landroid/support/v4/view/ViewCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$g;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1369
    invoke-static {p1}, Ldh;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1364
    invoke-static {p1, p2}, Ldh;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1365
    return-void
.end method
