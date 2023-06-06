.class public abstract Lgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lgr$a;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lgr$a;->b:Lgr$a;

    iput-object v0, p0, Lgr;->a:Lgr$a;

    .line 34
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lgr$a;->d:Lgr$a;

    iput-object v0, p0, Lgr;->a:Lgr$a;

    .line 67
    invoke-virtual {p0}, Lgr;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgr;->b:Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lgr;->a:Lgr$a;

    sget-object v1, Lgr$a;->c:Lgr$a;

    if-eq v0, v1, :cond_0

    .line 69
    sget-object v0, Lgr$a;->a:Lgr$a;

    iput-object v0, p0, Lgr;->a:Lgr$a;

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lgr$a;->c:Lgr$a;

    iput-object v0, p0, Lgr;->a:Lgr$a;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lgr;->a:Lgr$a;

    sget-object v3, Lgr$a;->d:Lgr$a;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 55
    sget-object v0, Lgr$1;->a:[I

    iget-object v3, p0, Lgr;->a:Lgr$a;

    invoke-virtual {v3}, Lgr$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-direct {p0}, Lgr;->c()Z

    move-result v1

    :goto_1
    :pswitch_0
    return v1

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 59
    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lgr;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 80
    :cond_0
    sget-object v0, Lgr$a;->b:Lgr$a;

    iput-object v0, p0, Lgr;->a:Lgr$a;

    .line 81
    iget-object v0, p0, Lgr;->b:Ljava/lang/Object;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lgr;->b:Ljava/lang/Object;

    .line 83
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
