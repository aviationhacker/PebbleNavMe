.class public Lcom/batescorp/pebble/nav/activity/DestinationActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DestinationActivity"


# instance fields
.field private adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    .line 286
    return-void
.end method

.method static synthetic access$000(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    return-object v0
.end method

.method private checkSecurity()V
    .locals 4

    .prologue
    .line 127
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    const-string v1, "Device write access  "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    const-string v1, "NavMe unlocks the screen to automatically start navigation; it needs write permission to lock the screen quickly when done to reduce battery consumption."

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$2;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)V

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/batescorp/pebble/nav/activity/DestinationActivity$1;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$1;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)V

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private createNewDestination(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 171
    const v0, 0x7f0d0050

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 172
    new-instance v0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const v3, 0x7f020081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const v6, 0x7f020080

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const v6, 0x7f020082

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-direct {v0, p0, v2}, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/Integer;)V

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 173
    const v0, 0x7f0d0051

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0d0052

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 175
    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 177
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDestination()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    invoke-virtual {v4}, Landroid/widget/Spinner;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getNavType()Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/batescorp/pebble/nav/processor/NavType;->getResourceId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 184
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 190
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "ok"

    new-instance v0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$4;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "cancel"

    new-instance v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity$3;

    invoke-direct {v2, p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$3;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;)V

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 231
    if-nez p1, :cond_3

    .line 232
    const-string v1, "Create new destination"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_3
    const-string v1, "Edit destination"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getDestinations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/batescorp/pebble/nav/activity/DestinationValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getDestinations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 111
    :pswitch_0
    const-string v2, "DestinationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    iget-object v3, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    invoke-virtual {v2, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->remove(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V

    .line 113
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->saveList()V

    .line 114
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->onContentChanged()V

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    const-string v2, "DestinationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Edit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->createNewDestination(Ljava/lang/Integer;)V

    move v0, v1

    .line 119
    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0066
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->updateList()V

    .line 65
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 77
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 78
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 84
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 50
    const-string v0, "DestinationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    const-string v1, "com.batescorp.pebble.nav.START_NAV"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "map.direction"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const-string v0, "DestinationActivity"

    const-string v1, "Add"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->createNewDestination(Ljava/lang/Integer;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0065
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->checkSecurity()V

    .line 72
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 278
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 284
    return-void
.end method

.method protected saveList()V
    .locals 5

    .prologue
    .line 258
    const-string v0, "DestinationActivity"

    const-string v1, "saveList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 261
    const-string v2, "DestinationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveList - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    invoke-virtual {v2, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    const-string v0, "DestinationActivity"

    const-string v2, "saveList - before update"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->updateDestinations(Ljava/util/List;)V

    .line 266
    const-string v0, "DestinationActivity"

    const-string v1, "saveList - before update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method protected updateList()V
    .locals 3

    .prologue
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getDestinations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 248
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    const v2, 0x7f03001d

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    .line 254
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->adapter:Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void
.end method
