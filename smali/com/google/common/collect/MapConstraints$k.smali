.class Lcom/google/common/collect/MapConstraints$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapConstraint",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<-TV;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapConstraint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapConstraint",
            "<-TV;-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapConstraint;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$k;->a:Lcom/google/common/collect/MapConstraint;

    .line 406
    return-void
.end method


# virtual methods
.method public checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$k;->a:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    return-void
.end method
