.class final Lhx$c;
.super Ljj$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljj$n",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljj;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Ljj$n;-><init>(Ljj;II)V

    .line 73
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lhx$c;->a(Ljava/lang/Object;I)Ljj$l;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lhx$c;->e(Ljj$l;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lhx$c;->a(Ljj$l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    invoke-virtual {p0}, Lhx$c;->n()V

    :goto_0
    return-object v0

    .line 92
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v0

    invoke-interface {v0}, Ljj$x;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 94
    :cond_2
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lhx$c;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    invoke-virtual {p0}, Lhx$c;->o()V

    .line 99
    iget v0, p0, Lhx$c;->b:I

    add-int/lit8 v6, v0, -0x1

    .line 100
    iget-object v7, p0, Lhx$c;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 101
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 102
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v5, v0

    .line 104
    :goto_1
    if-eqz v5, :cond_c

    .line 105
    invoke-interface {v5}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v9

    .line 106
    invoke-interface {v5}, Ljj$l;->c()I

    move-result v1

    if-ne v1, p2, :cond_6

    if-eqz v9, :cond_6

    iget-object v1, p0, Lhx$c;->a:Ljj;

    iget-object v1, v1, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 108
    invoke-virtual {v1, p1, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 109
    invoke-interface {v5}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljj$x;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v3

    .line 134
    :goto_2
    if-eqz v6, :cond_b

    .line 135
    new-instance v1, Lhx$e;

    invoke-direct {v1, p3}, Lhx$e;-><init>(Lcom/google/common/base/Function;)V

    .line 137
    if-nez v5, :cond_7

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lhx$c;->a(Ljava/lang/Object;ILjj$l;)Ljj$l;

    move-result-object v0

    .line 139
    invoke-interface {v0, v1}, Ljj$l;->a(Ljj$x;)V

    .line 140
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lhx$c;->unlock()V

    .line 147
    invoke-virtual {p0}, Lhx$c;->p()V

    .line 150
    if-eqz v6, :cond_8

    .line 152
    invoke-virtual {p0, p1, p2, v0, v1}, Lhx$c;->a(Ljava/lang/Object;ILjj$l;Lhx$e;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lhx$c;->n()V

    goto :goto_0

    .line 113
    :cond_3
    :try_start_4
    invoke-interface {v5}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    invoke-interface {v1}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    sget-object v10, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v9, p2, v1, v10}, Lhx$c;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 126
    :goto_4
    iget-object v1, p0, Lhx$c;->k:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lhx$c;->l:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 128
    iput v6, p0, Lhx$c;->b:I

    move v6, v2

    .line 130
    goto :goto_2

    .line 116
    :cond_4
    iget-object v10, p0, Lhx$c;->a:Ljj;

    invoke-virtual {v10}, Ljj;->b()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lhx$c;->a:Ljj;

    invoke-virtual {v10, v5}, Ljj;->c(Ljj$l;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    sget-object v10, Lcom/google/common/collect/MapMaker$d;->d:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v9, p2, v1, v10}, Lhx$c;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 146
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lhx$c;->unlock()V

    .line 147
    invoke-virtual {p0}, Lhx$c;->p()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lhx$c;->n()V

    throw v0

    .line 121
    :cond_5
    :try_start_6
    invoke-virtual {p0, v5}, Lhx$c;->b(Ljj$l;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    :try_start_7
    invoke-virtual {p0}, Lhx$c;->unlock()V

    .line 147
    invoke-virtual {p0}, Lhx$c;->p()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    invoke-virtual {p0}, Lhx$c;->n()V

    move-object v0, v1

    goto/16 :goto_0

    .line 104
    :cond_6
    :try_start_8
    invoke-interface {v5}, Ljj$l;->b()Ljj$l;

    move-result-object v5

    goto/16 :goto_1

    .line 142
    :cond_7
    invoke-interface {v5, v1}, Ljj$l;->a(Ljj$x;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object v1, v0

    .line 157
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_5
    const-string v4, "Recursive computation"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 159
    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v0

    invoke-interface {v0}, Ljj$x;->c()Ljava/lang/Object;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Lhx$c;->a(Ljj$l;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 168
    invoke-virtual {p0}, Lhx$c;->n()V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 157
    goto :goto_5

    :cond_b
    move-object v1, v4

    move-object v0, v5

    goto/16 :goto_3

    :cond_c
    move v6, v2

    goto/16 :goto_2
.end method

.method a(Ljava/lang/Object;ILjj$l;Lhx$e;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljj$l",
            "<TK;TV;>;",
            "Lhx$e",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 184
    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 185
    :try_start_1
    invoke-virtual {p4, p1, p2}, Lhx$e;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 186
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 187
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 188
    if-eqz v1, :cond_0

    .line 190
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, p1, p2, v1, v0}, Lhx$c;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v1, v0}, Lhx$c;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :cond_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 201
    :cond_1
    if-nez v1, :cond_2

    .line 202
    invoke-virtual {p0, p1, p2, p4}, Lhx$c;->b(Ljava/lang/Object;ILjj$x;)Z

    :cond_2
    return-object v1

    .line 187
    :catchall_0
    move-exception v0

    move-wide v2, v4

    :goto_0
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    :catchall_1
    move-exception v0

    :goto_1
    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 199
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 201
    :cond_3
    if-nez v1, :cond_4

    .line 202
    invoke-virtual {p0, p1, p2, p4}, Lhx$c;->b(Ljava/lang/Object;ILjj$x;)Z

    :cond_4
    throw v0

    .line 198
    :catchall_2
    move-exception v0

    move-wide v2, v4

    goto :goto_1

    .line 187
    :catchall_3
    move-exception v0

    goto :goto_0
.end method
