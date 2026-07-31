.class public Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$a;,
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$b;,
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;
    }
.end annotation


# static fields
.field private static a:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final b:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$a;

    invoke-direct {v0, v2}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$a;-><init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V

    iput-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->b:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$b;

    invoke-direct {v0, v2}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$b;-><init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V

    iput-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->b:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;

    goto :goto_0
.end method

.method public static getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->a:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    invoke-direct {v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->a:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    .line 63
    :cond_0
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->a:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->b:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;

    invoke-interface {v0, p1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 68
    return-void
.end method
