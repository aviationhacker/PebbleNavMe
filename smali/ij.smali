.class public Lij;
.super Lcom/google/common/collect/ImmutableSetMultimap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSetMultimap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lij;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    sput-object v0, Lij;->a:Lij;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    .line 32
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lij;->a:Lij;

    return-object v0
.end method
