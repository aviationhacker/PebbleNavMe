.class Landroid/support/v4/graphics/drawable/DrawableCompat$d;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 120
    invoke-static {p1, p2}, Lbd;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 121
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Lbd;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 126
    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
