.class Landroid/support/v4/view/ViewCompat$c;
.super Landroid/support/v4/view/ViewCompat$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 980
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 983
    invoke-static {p1}, Ldc;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 987
    invoke-static {p1, p2}, Ldc;->a(Landroid/view/View;I)V

    .line 988
    return-void
.end method
