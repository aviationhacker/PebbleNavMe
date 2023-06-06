.class public final Lbl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;I)Landroid/view/Display;
    .locals 1

    .prologue
    .line 28
    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)[Landroid/view/Display;
    .locals 1

    .prologue
    .line 32
    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)[Landroid/view/Display;
    .locals 1

    .prologue
    .line 36
    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method
