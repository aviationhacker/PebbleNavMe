.class public Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/activity/DestinationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/batescorp/pebble/nav/activity/DestinationValue;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;


# direct methods
.method public constructor <init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/batescorp/pebble/nav/activity/DestinationValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    .line 302
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 303
    iput-object p2, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->context:Landroid/content/Context;

    .line 304
    return-void
.end method


# virtual methods
.method public add(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    invoke-virtual {p0, p1}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->add(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0, p1}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 317
    iget-object v1, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 318
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 319
    if-nez p2, :cond_0

    .line 320
    const v2, 0x7f03001d

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 321
    new-instance v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;

    invoke-direct {v2, p0, v3}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;-><init>(Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;Lcom/batescorp/pebble/nav/activity/DestinationActivity$1;)V

    .line 322
    const v1, 0x7f0d0051

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    .line 323
    const v1, 0x7f0d002b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 324
    const v1, 0x7f0d0052

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->textDestination:Landroid/widget/TextView;

    .line 325
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 330
    :goto_0
    iget-object v2, v1, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->this$0:Lcom/batescorp/pebble/nav/activity/DestinationActivity;

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/activity/DestinationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getNavType()Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batescorp/pebble/nav/processor/NavType;->getResourceId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v2, v1, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->txtDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, v1, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;->textDestination:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-object p2

    .line 327
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter$ViewHolder;

    goto :goto_0
.end method

.method public remove(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    invoke-virtual {p0, p1}, Lcom/batescorp/pebble/nav/activity/DestinationActivity$CustomListViewAdapter;->remove(Lcom/batescorp/pebble/nav/activity/DestinationValue;)V

    return-void
.end method
