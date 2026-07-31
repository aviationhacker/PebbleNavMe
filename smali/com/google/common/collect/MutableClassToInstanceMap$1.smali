.class final Lcom/google/common/collect/MutableClassToInstanceMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MutableClassToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapConstraint",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public synthetic checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap$1;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
