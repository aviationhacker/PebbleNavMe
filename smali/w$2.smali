.class Lw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw;->popBackStack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw;


# direct methods
.method constructor <init>(Lw;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lw$2;->a:Lw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 552
    iget-object v0, p0, Lw$2;->a:Lw;

    iget-object v1, p0, Lw$2;->a:Lw;

    iget-object v1, v1, Lw;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->d()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lw;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 553
    return-void
.end method
