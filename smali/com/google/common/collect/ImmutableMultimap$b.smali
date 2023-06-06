.class Lcom/google/common/collect/ImmutableMultimap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "java serialization is not supported"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
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
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lka$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka$a",
            "<",
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lka$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lka$a",
            "<",
            "Lcom/google/common/collect/ImmutableSetMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 332
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    .line 333
    invoke-static {v0, v1}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$b;->a:Lka$a;

    .line 334
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    .line 335
    invoke-static {v0, v1}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$b;->b:Lka$a;

    .line 336
    const-class v0, Lcom/google/common/collect/ImmutableSetMultimap;

    const-string v1, "emptySet"

    .line 337
    invoke-static {v0, v1}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$b;->c:Lka$a;

    .line 336
    return-void
.end method
