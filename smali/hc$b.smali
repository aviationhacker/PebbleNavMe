.class Lhc$b;
.super Lhc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhc",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source."
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Lhc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lhc",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhc;-><init>(Ljava/util/Map;Lhc;Lhc$1;)V

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lhc;Lhc$1;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lhc$b;-><init>(Ljava/util/Map;Lhc;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 431
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc;

    invoke-virtual {p0, v0}, Lhc$b;->a(Lhc;)V

    .line 432
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOuputStream"
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 424
    invoke-virtual {p0}, Lhc$b;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 425
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lhc$b;->a:Lhc;

    invoke-virtual {v0, p1}, Lhc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lhc$b;->a:Lhc;

    invoke-virtual {v0, p1}, Lhc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lhc;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in the emulated source."
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0}, Lhc$b;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lhc;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
