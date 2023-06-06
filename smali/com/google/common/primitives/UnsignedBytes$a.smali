.class Lcom/google/common/primitives/UnsignedBytes$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 304
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$a;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$UnsafeComparator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$a;->a:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes$a;->a()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$a;->b:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    return-void
.end method

.method static a()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Comparator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-object v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    invoke-static {}, Lcom/google/common/primitives/UnsignedBytes;->a()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0
.end method
