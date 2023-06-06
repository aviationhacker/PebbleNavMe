.class Landroid/support/v4/view/ViewCompat$b;
.super Landroid/support/v4/view/ViewCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 976
    invoke-static {p1, p2}, Ldb;->a(Landroid/view/ViewGroup;Z)V

    .line 977
    return-void
.end method

.method public l(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 971
    invoke-static {p1}, Ldb;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
