.class public Lax;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 27
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result v0

    return v0
.end method
