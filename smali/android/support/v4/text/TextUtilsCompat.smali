.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextUtilsCompat$1;,
        Landroid/support/v4/text/TextUtilsCompat$b;,
        Landroid/support/v4/text/TextUtilsCompat$a;
    }
.end annotation


# static fields
.field public static final ROOT:Ljava/util/Locale;

.field private static final a:Landroid/support/v4/text/TextUtilsCompat$a;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 116
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$b;

    invoke-direct {v0, v2}, Landroid/support/v4/text/TextUtilsCompat$b;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Landroid/support/v4/text/TextUtilsCompat$a;

    .line 146
    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    .line 148
    const-string v0, "Arab"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Ljava/lang/String;

    .line 149
    const-string v0, "Hebr"

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/support/v4/text/TextUtilsCompat$a;

    invoke-direct {v0, v2}, Landroid/support/v4/text/TextUtilsCompat$a;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Landroid/support/v4/text/TextUtilsCompat$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p0    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Landroid/support/v4/text/TextUtilsCompat$a;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$a;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->a:Landroid/support/v4/text/TextUtilsCompat$a;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
