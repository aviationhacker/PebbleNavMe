.class Lbp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 72
    iput-object p1, p0, Lbp$4;->a:Lbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lbp$4;->a:Lbp;

    iget-object v0, v0, Lbp;->d:Lbo;

    invoke-interface {v0, p1}, Lbo;->a(I)V

    .line 76
    return-void
.end method
