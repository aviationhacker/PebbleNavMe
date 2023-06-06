.class public Lep;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FF)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/PathInterpolator;-><init>(FF)V

    return-object v0
.end method

.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
