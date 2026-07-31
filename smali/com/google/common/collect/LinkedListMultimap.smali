.class public Lcom/google/common/collect/LinkedListMultimap;
.super Lhi;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedListMultimap$h;,
        Lcom/google/common/collect/LinkedListMultimap$d;,
        Lcom/google/common/collect/LinkedListMultimap$g;,
        Lcom/google/common/collect/LinkedListMultimap$e;,
        Lcom/google/common/collect/LinkedListMultimap$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhi",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java serialization not supported"
    .end annotation
.end field


# instance fields
.field private transient a:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$e",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient d:I

.field private transient e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lhi;-><init>()V

    .line 201
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    .line 202
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lhi;-><init>()V

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    .line 206
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$f;)Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$f;)Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$f;)Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/LinkedListMultimap$f;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_0

    .line 222
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 223
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/LinkedListMultimap$e;-><init>(Lcom/google/common/collect/LinkedListMultimap$f;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    .line 260
    :goto_0
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    .line 261
    return-object v1

    .line 225
    :cond_0
    if-nez p3, :cond_2

    .line 226
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 227
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 228
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 230
    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$e;

    invoke-direct {v2, v1}, Lcom/google/common/collect/LinkedListMultimap$e;-><init>(Lcom/google/common/collect/LinkedListMultimap$f;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    goto :goto_0

    .line 234
    :cond_1
    iget v2, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    .line 235
    iget-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 236
    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 237
    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 238
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 242
    iget v2, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    .line 243
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 244
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 245
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 246
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 247
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 252
    :goto_1
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_4

    .line 253
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 257
    :goto_2
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 258
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_1

    .line 255
    :cond_4
    iget-object v0, p3, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_2
.end method

.method private a(Lcom/google/common/collect/LinkedListMultimap$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 275
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 280
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 282
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    .line 283
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    .line 300
    :goto_2
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    .line 301
    return-void

    .line 273
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 286
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    .line 288
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v1, :cond_3

    .line 289
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 294
    :goto_3
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v1, :cond_4

    .line 295
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_2

    .line 291
    :cond_3
    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_3

    .line 297
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$f;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap$f;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$h;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    .line 306
    return-void
.end method

.method static synthetic c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    return-object v0
.end method

.method private static c(Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 313
    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private d(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$h;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/common/collect/LinkedListMultimap;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 836
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    .line 837
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 838
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 840
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 842
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 843
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 825
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 826
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 827
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 828
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 829
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 831
    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$c;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lhi;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 805
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$a;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 666
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 667
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 668
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    .line 669
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap;->e:I

    .line 670
    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lhi;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 788
    invoke-super {p0}, Lhi;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1}, Lhi;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$b;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lhi;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Lcom/google/common/collect/Multimaps$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$a;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic j()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lhi;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lhi;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method synthetic l()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$f;)Lcom/google/common/collect/LinkedListMultimap$f;

    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Lhi;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lhi;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lhi;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 659
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->b(Ljava/lang/Object;)V

    .line 660
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 623
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$h;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$h;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 624
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 627
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 629
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 633
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 635
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 639
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 643
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap;->d:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lhi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 737
    invoke-super {p0}, Lhi;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
