.class public LCatalano/Math/Geometry/GrahamConvexHull;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public FindFull(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 55
    new-instance v2, Lb;

    invoke-direct {v2, v0}, Lb;-><init>(LCatalano/Core/IntPoint;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v5

    move-object v1, v0

    move v2, v4

    :goto_1
    if-ge v3, v7, :cond_2

    .line 62
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    iget v0, v0, Lb;->a:I

    iget v8, v1, Lb;->a:I

    if-lt v0, v8, :cond_1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    iget v0, v0, Lb;->a:I

    iget v8, v1, Lb;->a:I

    if-ne v0, v8, :cond_a

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    iget v0, v0, Lb;->b:I

    iget v8, v1, Lb;->b:I

    if-ge v0, v8, :cond_a

    .line 63
    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    move v1, v3

    .line 61
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v4

    :goto_3
    if-ge v3, v7, :cond_4

    .line 73
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    iget v0, v0, Lb;->a:I

    iget v2, v1, Lb;->a:I

    sub-int v2, v0, v2

    .line 74
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    iget v0, v0, Lb;->b:I

    iget v8, v1, Lb;->b:I

    sub-int v8, v0, v8

    .line 77
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    mul-int v9, v2, v2

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v0, Lb;->d:F

    .line 79
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    if-nez v2, :cond_3

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_4
    iput v2, v0, Lb;->c:F

    .line 72
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 79
    :cond_3
    int-to-float v8, v8

    int-to-float v2, v2

    div-float v2, v8, v2

    goto :goto_4

    .line 83
    :cond_4
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    .line 94
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb;

    move-object v2, v0

    .line 96
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 97
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    .line 101
    iget v5, v0, Lb;->c:F

    iget v7, v2, Lb;->c:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_5

    iget v5, v0, Lb;->d:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    .line 102
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 107
    :cond_6
    iget v5, v0, Lb;->a:I

    iget v7, v1, Lb;->a:I

    sub-int/2addr v5, v7

    iget v7, v2, Lb;->b:I

    iget v8, v0, Lb;->b:I

    sub-int/2addr v7, v8

    mul-int/2addr v5, v7

    iget v7, v2, Lb;->a:I

    iget v8, v0, Lb;->a:I

    sub-int/2addr v7, v8

    iget v8, v0, Lb;->b:I

    iget v9, v1, Lb;->b:I

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    sub-int/2addr v5, v7

    if-gez v5, :cond_7

    .line 109
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v1, v2

    :goto_6
    move-object v2, v0

    .line 123
    goto :goto_5

    .line 118
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_6

    .line 126
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb;

    .line 129
    invoke-virtual {v0}, Lb;->a()LCatalano/Core/IntPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 132
    :cond_9
    return-object v1

    :cond_a
    move-object v0, v1

    move v1, v2

    goto/16 :goto_2
.end method
