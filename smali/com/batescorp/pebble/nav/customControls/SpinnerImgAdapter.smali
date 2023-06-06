.class public Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f03001f

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->a:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->b:[Ljava/lang/Integer;

    .line 22
    return-void
.end method

.method private a(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 41
    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    const v1, 0x7f03001f

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;

    invoke-direct {v1}, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;-><init>()V

    .line 47
    const v0, 0x7f0d002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;->a:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->b:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    .line 56
    iget-object v0, v0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    return-object p2

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter$a;

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/batescorp/pebble/nav/customControls/SpinnerImgAdapter;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
