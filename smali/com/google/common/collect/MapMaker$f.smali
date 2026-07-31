.class public final Lcom/google/common/collect/MapMaker$f;
.super Lix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lix",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/collect/MapMaker$d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/MapMaker$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0, p1, p2}, Lix;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 670
    iput-object p3, p0, Lcom/google/common/collect/MapMaker$f;->a:Lcom/google/common/collect/MapMaker$d;

    .line 671
    return-void
.end method
