.class Lbp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbp;


# direct methods
.method constructor <init>(Lbp;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbp$2;->a:Lbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbp$2;->a:Lbp;

    invoke-virtual {v0}, Lbp;->d()V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lbp$2;->a:Lbp;

    invoke-virtual {v0}, Lbp;->j()V

    goto :goto_0
.end method
