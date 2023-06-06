.class Ljd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "serialization"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Ljd$a;->a:Lcom/google/common/collect/ImmutableMap;

    .line 102
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljd$a;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
