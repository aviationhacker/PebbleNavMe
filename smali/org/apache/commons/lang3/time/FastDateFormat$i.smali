.class Lorg/apache/commons/lang3/time/FastDateFormat$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDateFormat$i;

.field static final b:Lorg/apache/commons/lang3/time/FastDateFormat$i;


# instance fields
.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1418
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat$i;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$i;->a:Lorg/apache/commons/lang3/time/FastDateFormat$i;

    .line 1419
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat$i;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$i;->b:Lorg/apache/commons/lang3/time/FastDateFormat$i;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput-boolean p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$i;->c:Z

    .line 1430
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x5

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    .prologue
    .line 1443
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1445
    if-gez v0, :cond_1

    .line 1446
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1447
    neg-int v0, v0

    .line 1452
    :goto_0
    const v1, 0x36ee80

    div-int v1, v0, v1

    .line 1453
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1454
    rem-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1456
    iget-boolean v2, p0, Lorg/apache/commons/lang3/time/FastDateFormat$i;->c:Z

    if-eqz v2, :cond_0

    .line 1457
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    :cond_0
    const v2, 0xea60

    div-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x3c

    sub-int/2addr v0, v1

    .line 1461
    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1462
    rem-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1463
    return-void

    .line 1449
    :cond_1
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
