.class public Le;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCanRetrieveWindowContent()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
