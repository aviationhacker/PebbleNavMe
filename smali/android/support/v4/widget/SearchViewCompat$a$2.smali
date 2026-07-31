.class Landroid/support/v4/widget/SearchViewCompat$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SearchViewCompat$a;->a(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

.field final synthetic b:Landroid/support/v4/widget/SearchViewCompat$a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$a;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$a$2;->b:Landroid/support/v4/widget/SearchViewCompat$a;

    iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$a$2;->a:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$a$2;->a:Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;->onClose()Z

    move-result v0

    return v0
.end method
