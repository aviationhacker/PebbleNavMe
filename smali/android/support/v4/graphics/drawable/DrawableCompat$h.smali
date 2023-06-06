.class Landroid/support/v4/graphics/drawable/DrawableCompat$h;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$g;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 201
    invoke-static {p1, p2}, Lba;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 202
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 206
    invoke-static {p1}, Lba;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method
