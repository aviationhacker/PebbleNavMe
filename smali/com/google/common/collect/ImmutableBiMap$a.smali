.class Lcom/google/common/collect/ImmutableBiMap$a;
.super Lcom/google/common/collect/ImmutableMap$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$c;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 334
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableBiMap$a;->a(Lcom/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
