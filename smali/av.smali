.class public Lav;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
