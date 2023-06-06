.class abstract Lcom/google/common/cache/CacheBuilderSpec$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
.end method

.method public a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value of key %s omitted"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 420
    sparse-switch v0, :sswitch_data_0

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "key %s invalid format.  was %s, must end with one of [dDhHmMsS]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 435
    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "key %s value set to %s, must be integer"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    .line 443
    invoke-static {v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 416
    goto :goto_0

    .line 422
    :sswitch_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 439
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 440
    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/google/common/cache/CacheBuilderSpec$c;->a(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V

    .line 445
    return-void

    .line 425
    :sswitch_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 428
    :sswitch_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_1

    .line 431
    :sswitch_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x68 -> :sswitch_1
        0x6d -> :sswitch_2
        0x73 -> :sswitch_3
    .end sparse-switch
.end method
