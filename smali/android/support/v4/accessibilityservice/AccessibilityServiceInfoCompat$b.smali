.class Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$b;
.super Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Lf;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    return v0
.end method
