.class Landroid/support/v4/view/ViewCompat$f;
.super Landroid/support/v4/view/ViewCompat$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1225
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$e;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1284
    invoke-static {p1}, Ldf;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public F(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1289
    invoke-static {p1}, Ldf;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public L(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1294
    invoke-static {p1}, Ldf;->h(Landroid/view/View;)V

    .line 1295
    return-void
.end method

.method public P(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1299
    invoke-static {p1}, Ldf;->i(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1240
    invoke-static {p1, p2, p3, p4, p5}, Ldf;->a(Landroid/view/View;IIII)V

    .line 1241
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1244
    invoke-static {p1, p2}, Ldf;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1245
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1248
    invoke-static {p1, p2, p3, p4}, Ldf;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1249
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1232
    invoke-static {p1, p2}, Ldf;->a(Landroid/view/View;Z)V

    .line 1233
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1266
    invoke-static {p1, p2, p3}, Ldf;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1228
    invoke-static {p1}, Ldf;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1236
    invoke-static {p1}, Ldf;->b(Landroid/view/View;)V

    .line 1237
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1260
    const/4 p2, 0x2

    .line 1262
    :cond_0
    invoke-static {p1, p2}, Ldf;->a(Landroid/view/View;I)V

    .line 1263
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1252
    invoke-static {p1}, Ldf;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2

    .prologue
    .line 1270
    invoke-static {p1}, Ldf;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_0

    .line 1272
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    .line 1274
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1279
    invoke-static {p1}, Ldf;->e(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1304
    invoke-static {p1}, Ldf;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
