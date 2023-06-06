.class public Landroid/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompat$d;,
        Landroid/support/v4/view/LayoutInflaterCompat$c;,
        Landroid/support/v4/view/LayoutInflaterCompat$b;,
        Landroid/support/v4/view/LayoutInflaterCompat$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/LayoutInflaterCompat$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$d;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$a;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$c;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$a;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompat$b;

    invoke-direct {v0}, Landroid/support/v4/view/LayoutInflaterCompat$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/view/LayoutInflaterCompat;->a:Landroid/support/v4/view/LayoutInflaterCompat$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/LayoutInflaterCompat$a;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 80
    return-void
.end method
