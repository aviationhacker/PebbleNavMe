.class public Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$d;,
        Landroid/support/v4/text/ICUCompat$c;,
        Landroid/support/v4/text/ICUCompat$b;,
        Landroid/support/v4/text/ICUCompat$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/text/ICUCompat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/support/v4/text/ICUCompat$d;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$a;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v0, Landroid/support/v4/text/ICUCompat$c;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$a;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/support/v4/text/ICUCompat$b;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/text/ICUCompat;->a:Landroid/support/v4/text/ICUCompat$a;

    invoke-interface {v0, p0}, Landroid/support/v4/text/ICUCompat$a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
