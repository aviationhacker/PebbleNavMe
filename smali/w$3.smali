.class Lw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw;->popBackStack(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lw;


# direct methods
.method constructor <init>(Lw;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lw$3;->c:Lw;

    iput-object p2, p0, Lw$3;->a:Ljava/lang/String;

    iput p3, p0, Lw$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 568
    iget-object v0, p0, Lw$3;->c:Lw;

    iget-object v1, p0, Lw$3;->c:Lw;

    iget-object v1, v1, Lw;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->d()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lw$3;->a:Ljava/lang/String;

    const/4 v3, -0x1

    iget v4, p0, Lw$3;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lw;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 569
    return-void
.end method
