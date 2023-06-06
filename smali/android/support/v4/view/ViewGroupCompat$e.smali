.class Landroid/support/v4/view/ViewGroupCompat$e;
.super Landroid/support/v4/view/ViewGroupCompat$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p1, p2}, Ldp;->a(Landroid/view/ViewGroup;Z)V

    .line 126
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Z
    .locals 1

    .prologue
    .line 130
    invoke-static {p1}, Ldp;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/ViewGroup;)I
    .locals 1

    .prologue
    .line 135
    invoke-static {p1}, Ldp;->b(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method
