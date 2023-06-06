.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/SharedPreferencesCompat$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
