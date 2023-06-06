.class final Lla$a;
.super Lkw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lla;

.field private final b:Ljava/util/zip/Checksum;


# direct methods
.method private constructor <init>(Lla;Ljava/util/zip/Checksum;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lla$a;->a:Lla;

    invoke-direct {p0}, Lkw;-><init>()V

    .line 64
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Checksum;

    iput-object v0, p0, Lla$a;->b:Ljava/util/zip/Checksum;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lla;Ljava/util/zip/Checksum;Lla$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lla$a;-><init>(Lla;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method protected a(B)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lla$a;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 70
    return-void
.end method

.method protected a([BII)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lla$a;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 75
    return-void
.end method

.method public hash()Lcom/google/common/hash/HashCode;
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lla$a;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lla$a;->a:Lla;

    invoke-static {v2}, Lla;->a(Lla;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 86
    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v0

    goto :goto_0
.end method
