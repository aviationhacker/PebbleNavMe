.class public Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewConfigurationCompat$d;,
        Landroid/support/v4/view/ViewConfigurationCompat$c;,
        Landroid/support/v4/view/ViewConfigurationCompat$b;,
        Landroid/support/v4/view/ViewConfigurationCompat$a;,
        Landroid/support/v4/view/ViewConfigurationCompat$e;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/ViewConfigurationCompat$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$d;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$c;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 91
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$a;

    invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$e;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->a:Landroid/support/v4/view/ViewConfigurationCompat$e;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$e;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
