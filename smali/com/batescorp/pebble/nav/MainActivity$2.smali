.class Lcom/batescorp/pebble/nav/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/MainActivity;->onStart()V
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
    .line 134
    iput-object p1, p0, Lcom/batescorp/pebble/nav/MainActivity$2;->a:Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/batescorp/pebble/nav/MainActivity$2;->a:Lcom/batescorp/pebble/nav/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/batescorp/pebble/nav/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method
