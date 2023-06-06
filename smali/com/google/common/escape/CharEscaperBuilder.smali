.class public final Lcom/google/common/escape/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/CharEscaperBuilder$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->b:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->a:Ljava/util/Map;

    .line 83
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->b:I

    if-le p1, v0, :cond_0

    .line 91
    iput p1, p0, Lcom/google/common/escape/CharEscaperBuilder;->b:I

    .line 93
    :cond_0
    return-object p0
.end method

.method public addEscapes([CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 3

    .prologue
    .line 100
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p1, v0

    .line 102
    invoke-virtual {p0, v2, p2}, Lcom/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object p0
.end method

.method public toArray()[[C
    .locals 4

    .prologue
    .line 115
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->b:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[C

    .line 116
    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_0

    .line 119
    :cond_0
    return-object v2
.end method

.method public toEscaper()Lcom/google/common/escape/Escaper;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/common/escape/CharEscaperBuilder$a;

    invoke-virtual {p0}, Lcom/google/common/escape/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/escape/CharEscaperBuilder$a;-><init>([[C)V

    return-object v0
.end method
