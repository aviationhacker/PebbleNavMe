.class Landroid/support/v4/widget/PopupWindowCompat$d;
.super Landroid/support/v4/widget/PopupWindowCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;I)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p1, p2}, Lff;->a(Landroid/widget/PopupWindow;I)V

    .line 77
    return-void
.end method

.method public b(Landroid/widget/PopupWindow;)I
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lff;->a(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method
