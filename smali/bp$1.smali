.class Lbp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


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
    .line 42
    iput-object p1, p0, Lbp$1;->a:Lbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbp$1;->a:Lbp;

    invoke-virtual {v0}, Lbp;->c()V

    .line 46
    return-void
.end method

.method public onWindowDetached()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbp$1;->a:Lbp;

    invoke-virtual {v0}, Lbp;->k()V

    .line 50
    return-void
.end method
