.class Lw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
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
    .line 490
    iput-object p1, p0, Lw$1;->a:Lw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lw$1;->a:Lw;

    invoke-virtual {v0}, Lw;->b()Z

    .line 494
    return-void
.end method
