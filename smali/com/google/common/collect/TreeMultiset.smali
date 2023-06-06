.class public final Lcom/google/common/collect/TreeMultiset;
.super Lho;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeMultiset$b;,
        Lcom/google/common/collect/TreeMultiset$c;,
        Lcom/google/common/collect/TreeMultiset$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lho",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private final transient b:Lcom/google/common/collect/TreeMultiset$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$c",
            "<",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient c:Lit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient d:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset$c;Lit;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$c",
            "<",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;>;",
            "Lit",
            "<TE;>;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p2}, Lit;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lho;-><init>(Ljava/util/Comparator;)V

    .line 117
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    .line 118
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    .line 119
    iput-object p3, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1}, Lho;-><init>(Ljava/util/Comparator;)V

    .line 124
    invoke-static {p1}, Lit;->a(Ljava/util/Comparator;)Lit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    .line 125
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    .line 126
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 127
    new-instance v0, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v0, v2}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    .line 128
    return-void
.end method

.method static a(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/TreeMultiset$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 506
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset$b;->c(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/google/common/collect/TreeMultiset$a;)J
    .locals 6

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 164
    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 171
    :cond_1
    return-wide v2
.end method

.method private a(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/TreeMultiset$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$a;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    const-wide/16 v0, 0x0

    .line 193
    :goto_0
    return-wide v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 179
    if-gez v0, :cond_1

    .line 180
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    goto :goto_0

    .line 181
    :cond_1
    if-nez v0, :cond_2

    .line 182
    sget-object v0, Lcom/google/common/collect/TreeMultiset$4;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 184
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    .line 192
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 193
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->h()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    return-void
.end method

.method private b(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 4
    .param p2    # Lcom/google/common/collect/TreeMultiset$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$a;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;)J"
        }
    .end annotation

    .prologue
    .line 198
    if-nez p2, :cond_0

    .line 199
    const-wide/16 v0, 0x0

    .line 216
    :goto_0
    return-wide v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->d(Lcom/google/common/collect/TreeMultiset$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 202
    if-lez v0, :cond_1

    .line 203
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    goto :goto_0

    .line 204
    :cond_1
    if-nez v0, :cond_2

    .line 205
    sget-object v0, Lcom/google/common/collect/TreeMultiset$4;->a:[I

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v1}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/TreeMultiset$a;->b(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v0

    .line 215
    invoke-virtual {p1, p2}, Lcom/google/common/collect/TreeMultiset$a;->a(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 216
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset$b;->e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$a;Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/google/common/collect/TreeMultiset$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset;)Lit;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 946
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 947
    invoke-static {p1, p0}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    .line 948
    return-void
.end method

.method private static b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TT;>;",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {p0, p1}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 952
    invoke-static {p1, p2}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 953
    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 107
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 108
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;
    .locals 2
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/TreeMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 91
    if-nez p0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset;->i()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/google/common/collect/TreeMultiset$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 362
    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lit;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lit;->d()Ljava/lang/Object;

    move-result-object v2

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/TreeMultiset$b;->a(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 372
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v3}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 374
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 379
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lit;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    goto :goto_1
.end method

.method private i()Lcom/google/common/collect/TreeMultiset$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 385
    if-nez v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v1

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lit;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lit;->f()Ljava/lang/Object;

    move-result-object v2

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/google/common/collect/TreeMultiset$b;->b(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 395
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v3}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_2

    .line 397
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    .line 402
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lit;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 974
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 977
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 978
    const-class v1, Lho;

    const-string v2, "comparator"

    invoke-static {v1, v2}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lka$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 979
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "range"

    invoke-static {v1, v2}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v1

    .line 980
    invoke-static {v0}, Lit;->a(Ljava/util/Comparator;)Lit;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lka$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    const-class v0, Lcom/google/common/collect/TreeMultiset;

    const-string v1, "rootReference"

    invoke-static {v0, v1}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/TreeMultiset$c;

    invoke-direct {v1, v3}, Lcom/google/common/collect/TreeMultiset$c;-><init>(Lcom/google/common/collect/TreeMultiset$1;)V

    .line 982
    invoke-virtual {v0, p0, v1}, Lka$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 983
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    .line 984
    const-class v1, Lcom/google/common/collect/TreeMultiset;

    const-string v2, "header"

    invoke-static {v1, v2}, Lka;->a(Ljava/lang/Class;Ljava/lang/String;)Lka$a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lka$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 985
    invoke-static {v0, v0}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 986
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;)V

    .line 987
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 968
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 969
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 970
    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/google/common/collect/TreeMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$2;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 250
    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0, p1}, Lit;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 255
    if-nez v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 257
    new-instance v2, Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    .line 258
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v3, v2, v4}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 259
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v3, v0, v2}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 260
    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 263
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v3

    .line 264
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    aget v0, v2, v1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method b()I
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->b:Lcom/google/common/collect/TreeMultiset$a;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lho;->clear()V

    return-void
.end method

.method public bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 234
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 236
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v2, p1}, Lit;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 243
    :goto_0
    return v0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    move v0, v1

    .line 243
    goto :goto_0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lcom/google/common/collect/TreeMultiset$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeMultiset$3;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->hashCode()I

    move-result v0

    return v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    .line 493
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lit;->b(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lit;->a(Lit;)Lit;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$c;Lit;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 270
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 271
    if-nez p2, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 290
    :goto_0
    return v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 275
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v3, p1}, Lit;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 289
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    aget v0, v2, v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move v0, v1

    .line 285
    goto :goto_0

    .line 286
    :catch_1
    move-exception v0

    move v0, v1

    .line 287
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lho;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    const-string v0, "count"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0, p1}, Lit;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 311
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 297
    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 302
    if-nez v0, :cond_3

    .line 303
    if-lez p2, :cond_0

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 308
    :cond_3
    new-array v1, v1, [I

    .line 309
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p2, v1}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v4, v0, v3}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    aget v2, v1, v2

    goto :goto_1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 316
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 317
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    invoke-virtual {v0, p1}, Lit;->c(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$b;

    .line 321
    if-nez v0, :cond_2

    .line 322
    if-nez p2, :cond_1

    .line 323
    if-lez p3, :cond_0

    .line 324
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/TreeMultiset;->add(Ljava/lang/Object;I)I

    .line 334
    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    .line 328
    goto :goto_0

    .line 331
    :cond_2
    new-array v5, v6, [I

    .line 332
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/TreeMultiset$c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    aget v0, v5, v7

    if-ne v0, p2, :cond_3

    move v0, v6

    :goto_1
    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$a;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset$a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lho;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v0, Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset;->b:Lcom/google/common/collect/TreeMultiset$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset;->c:Lit;

    .line 501
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lit;->a(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lit;->a(Lit;)Lit;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset;->d:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeMultiset;-><init>(Lcom/google/common/collect/TreeMultiset$c;Lit;Lcom/google/common/collect/TreeMultiset$b;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lho;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
