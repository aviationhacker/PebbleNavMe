.class final Lcom/getpebble/android/kit/util/PebbleTuple;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getpebble/android/kit/util/PebbleTuple$a;,
        Lcom/getpebble/android/kit/util/PebbleTuple$b;,
        Lcom/getpebble/android/kit/util/PebbleTuple$ValueOverflowException;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/getpebble/android/kit/util/PebbleTuple$a;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/getpebble/android/kit/util/PebbleTuple$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/nio/charset/Charset;


# instance fields
.field public final c:I

.field public final d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

.field public final e:Lcom/getpebble/android/kit/util/PebbleTuple$b;

.field public final f:I

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 14
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/getpebble/android/kit/util/PebbleTuple;->h:Ljava/nio/charset/Charset;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/getpebble/android/kit/util/PebbleTuple;->a:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->values()[Lcom/getpebble/android/kit/util/PebbleTuple$a;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 20
    sget-object v5, Lcom/getpebble/android/kit/util/PebbleTuple;->a:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/getpebble/android/kit/util/PebbleTuple;->b:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/getpebble/android/kit/util/PebbleTuple$b;->values()[Lcom/getpebble/android/kit/util/PebbleTuple$b;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 28
    sget-object v4, Lcom/getpebble/android/kit/util/PebbleTuple;->b:Ljava/util/Map;

    iget v5, v3, Lcom/getpebble/android/kit/util/PebbleTuple$b;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_1
    return-void
.end method

.method private constructor <init>(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->c:I

    .line 55
    iput-object p2, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->d:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    .line 56
    iput-object p3, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->e:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    .line 57
    iput p4, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->f:I

    .line 58
    iput-object p5, p0, Lcom/getpebble/android/kit/util/PebbleTuple;->g:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;I)Lcom/getpebble/android/kit/util/PebbleTuple;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple;

    iget v4, p2, Lcom/getpebble/android/kit/util/PebbleTuple$b;->e:I

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/getpebble/android/kit/util/PebbleTuple;-><init>(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;ILjava/lang/Object;)V

    return-object v0
.end method

.method static a(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;Ljava/lang/Object;)Lcom/getpebble/android/kit/util/PebbleTuple;
    .locals 6

    .prologue
    .line 69
    const v4, 0x7fffffff

    .line 70
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$b;->a:Lcom/getpebble/android/kit/util/PebbleTuple$b;

    if-eq p2, v0, :cond_1

    .line 71
    iget v4, p2, Lcom/getpebble/android/kit/util/PebbleTuple$b;->e:I

    .line 78
    :cond_0
    :goto_0
    const v0, 0xffff

    if-le v4, v0, :cond_3

    .line 79
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple$ValueOverflowException;

    invoke-direct {v0}, Lcom/getpebble/android/kit/util/PebbleTuple$ValueOverflowException;-><init>()V

    throw v0

    .line 72
    :cond_1
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->a:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    if-ne p1, v0, :cond_2

    move-object v0, p3

    .line 73
    check-cast v0, [B

    check-cast v0, [B

    array-length v4, v0

    goto :goto_0

    .line 74
    :cond_2
    sget-object v0, Lcom/getpebble/android/kit/util/PebbleTuple$a;->b:Lcom/getpebble/android/kit/util/PebbleTuple$a;

    if-ne p1, v0, :cond_0

    move-object v0, p3

    .line 75
    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/getpebble/android/kit/util/PebbleTuple;->h:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v4, v0

    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Lcom/getpebble/android/kit/util/PebbleTuple;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/getpebble/android/kit/util/PebbleTuple;-><init>(ILcom/getpebble/android/kit/util/PebbleTuple$a;Lcom/getpebble/android/kit/util/PebbleTuple$b;ILjava/lang/Object;)V

    return-object v0
.end method
