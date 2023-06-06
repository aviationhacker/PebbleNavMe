.class Landroid/support/v4/graphics/drawable/DrawableCompat$e;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 136
    invoke-static {p1, p2}, Lbe;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 137
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {p1}, Lbe;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 146
    invoke-static {p1}, Lbe;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
