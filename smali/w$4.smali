.class Lw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lw;


# direct methods
.method constructor <init>(Lw;II)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lw$4;->c:Lw;

    iput p2, p0, Lw$4;->a:I

    iput p3, p0, Lw$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 587
    iget-object v0, p0, Lw$4;->c:Lw;

    iget-object v1, p0, Lw$4;->c:Lw;

    iget-object v1, v1, Lw;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->d()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lw$4;->a:I

    iget v4, p0, Lw$4;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lw;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 588
    return-void
.end method
