.class Landroid/support/v4/widget/CompoundButtonCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/CompoundButtonCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Leu;->c(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p1, p2}, Leu;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 61
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p1, p2}, Leu;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    return-void
.end method

.method public b(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 65
    invoke-static {p1}, Leu;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 75
    invoke-static {p1}, Leu;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method
