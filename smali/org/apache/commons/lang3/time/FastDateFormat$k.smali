.class Lorg/apache/commons/lang3/time/FastDateFormat$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/lang3/time/FastDateFormat$b;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateFormat$b;)V
    .locals 0

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$k;->a:Lorg/apache/commons/lang3/time/FastDateFormat$b;

    .line 1344
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$k;->a:Lorg/apache/commons/lang3/time/FastDateFormat$b;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDateFormat$b;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$k;->a:Lorg/apache/commons/lang3/time/FastDateFormat$b;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDateFormat$b;->a(Ljava/lang/StringBuffer;I)V

    .line 1369
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 1357
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1358
    if-nez v0, :cond_0

    .line 1359
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1361
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$k;->a:Lorg/apache/commons/lang3/time/FastDateFormat$b;

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$b;->a(Ljava/lang/StringBuffer;I)V

    .line 1362
    return-void
.end method
