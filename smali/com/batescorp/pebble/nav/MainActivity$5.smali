.class Lcom/batescorp/pebble/nav/MainActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/MainActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/MainActivity;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/MainActivity;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/batescorp/pebble/nav/MainActivity$5;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/batescorp/pebble/nav/MainActivity$5;->a:Lcom/batescorp/pebble/nav/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 507
    return-void
.end method
