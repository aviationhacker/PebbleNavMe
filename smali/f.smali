.class public Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method
