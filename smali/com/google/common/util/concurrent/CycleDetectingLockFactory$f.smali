.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field static final a:[Ljava/lang/StackTraceElement;

.field static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 520
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->a:[Ljava/lang/StackTraceElement;

    .line 523
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 524
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    .line 525
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    .line 526
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->b:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;)V
    .locals 5

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 531
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 532
    const-class v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    .line 533
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->a:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 538
    :cond_1
    sget-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->b:Ljava/util/Set;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 539
    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_1

    .line 531
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
