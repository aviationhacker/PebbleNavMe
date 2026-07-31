.class Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/activity/DestinationActivity;->checkSecurity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
