.class Landroid/support/v4/widget/SearchViewCompat$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat$a;->a(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

.field final synthetic b:Landroid/support/v4/widget/SearchViewCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$a;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$a$1;->b:Landroid/support/v4/widget/SearchViewCompat$a;

    iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$a$1;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$a$1;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$a$1;->a:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
