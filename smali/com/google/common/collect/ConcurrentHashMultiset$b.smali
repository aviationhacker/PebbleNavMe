.class Lcom/google/common/collect/ConcurrentHashMultiset$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lka$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka$a",
            "<",
            "Lcom/google/common/collect/ConcurrentHashMultiset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    .line 77
    invoke-static {v0, v1}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ConcurrentHashMultiset$b;->a:Lka$a;

    .line 76
    return-void
.end method
