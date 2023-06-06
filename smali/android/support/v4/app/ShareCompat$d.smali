.class Landroid/support/v4/app/ShareCompat$d;
.super Landroid/support/v4/app/ShareCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/support/v4/app/ShareCompat$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Lah;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
