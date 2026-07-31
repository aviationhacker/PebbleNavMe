.class Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/activity/DestinationActivity;->createNewDestination(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

.field final synthetic val$description:Landroid/widget/TextView;

.field final synthetic val$destination:Landroid/widget/TextView;

.field final synthetic val$position:Ljava/lang/Integer;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$description:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$destination:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$spinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$position:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 198
    :try_start_0
    const-string v0, "DestinationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$description:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v0, "DestinationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destination : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$destination:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "DestinationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navType     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$position:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->access$000(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    move-result-object v1

    new-instance v2, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$destination:Landroid/widget/TextView;

    .line 204
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$spinner:Landroid/widget/Spinner;

    .line 205
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavType;->fromResourceId(Ljava/lang/Integer;)Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V

    .line 203
    invoke-virtual {v1, v2}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->add(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->saveList()V

    .line 213
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->onContentChanged()V

    .line 219
    :goto_1
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->access$000(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 208
    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$description:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$destination:Landroid/widget/TextView;

    .line 209
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;->val$spinner:Landroid/widget/Spinner;

    .line 210
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/batescorp/pebble/nav/processor/NavType;->fromResourceId(Ljava/lang/Integer;)Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v2, v3, v1}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->update(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "DestinationActivity"

    const-string v2, "ERROR : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
