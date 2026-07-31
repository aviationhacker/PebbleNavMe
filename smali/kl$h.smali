.class abstract Lkl$h;
.super Lcom/google/common/collect/Sets$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lkl;


# direct methods
.method private constructor <init>(Lkl;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lkl$h;->b:Lkl;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkl;Lkl$1;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lkl$h;-><init>(Lkl;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lkl$h;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lkl$h;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
