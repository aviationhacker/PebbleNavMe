.class public LCatalano/Math/SparseArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Math/SparseArray$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "LCatalano/Math/SparseArray$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LCatalano/Math/SparseArray$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xa

    invoke-direct {p0, v0}, LCatalano/Math/SparseArray;-><init>(I)V

    .line 70
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public append(ID)V
    .locals 2

    .prologue
    .line 155
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    new-instance v1, LCatalano/Math/SparseArray$Entry;

    invoke-direct {v1, p0, p1, p2, p3}, LCatalano/Math/SparseArray$Entry;-><init>(LCatalano/Math/SparseArray;ID)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public get(I)D
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Math/SparseArray$Entry;

    .line 113
    iget v2, v0, LCatalano/Math/SparseArray$Entry;->i:I

    if-ne v2, p1, :cond_0

    .line 114
    iget-wide v0, v0, LCatalano/Math/SparseArray$Entry;->x:D

    .line 118
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LCatalano/Math/SparseArray$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Math/SparseArray$Entry;

    .line 168
    iget v0, v0, LCatalano/Math/SparseArray$Entry;->i:I

    if-ne v0, p1, :cond_0

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 173
    :cond_1
    return-void
.end method

.method public set(ID)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, LCatalano/Math/SparseArray;->remove(I)V

    .line 146
    :goto_0
    return v2

    .line 133
    :cond_0
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 134
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Math/SparseArray$Entry;

    .line 136
    iget v5, v0, LCatalano/Math/SparseArray$Entry;->i:I

    if-ne v5, p1, :cond_1

    .line 137
    iput-wide p2, v0, LCatalano/Math/SparseArray$Entry;->x:D

    goto :goto_0

    .line 139
    :cond_1
    iget v0, v0, LCatalano/Math/SparseArray$Entry;->i:I

    if-le v0, p1, :cond_2

    .line 140
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    new-instance v2, LCatalano/Math/SparseArray$Entry;

    invoke-direct {v2, p0, p1, p2, p3}, LCatalano/Math/SparseArray$Entry;-><init>(LCatalano/Math/SparseArray;ID)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v2, v3

    .line 141
    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 145
    :cond_3
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    new-instance v1, LCatalano/Math/SparseArray$Entry;

    invoke-direct {v1, p0, p1, p2, p3}, LCatalano/Math/SparseArray$Entry;-><init>(LCatalano/Math/SparseArray;ID)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 146
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LCatalano/Math/SparseArray;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
