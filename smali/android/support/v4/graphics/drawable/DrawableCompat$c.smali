.class Landroid/support/v4/graphics/drawable/DrawableCompat$c;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p1}, Lbc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Lbc;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
