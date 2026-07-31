.class final Ljo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "serialization"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Ljo$a;->a:Lcom/google/common/collect/Range;

    .line 204
    iput-object p2, p0, Ljo$a;->b:Lcom/google/common/collect/DiscreteDomain;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;Ljo$1;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljo$a;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljo;

    iget-object v1, p0, Ljo$a;->a:Lcom/google/common/collect/Range;

    iget-object v2, p0, Ljo$a;->b:Lcom/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1, v2}, Ljo;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
