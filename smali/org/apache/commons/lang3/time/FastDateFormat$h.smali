.class Lorg/apache/commons/lang3/time/FastDateFormat$h;
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
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/util/TimeZone;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .locals 1

    .prologue
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->a:Ljava/util/TimeZone;

    .line 1390
    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDateFormat;->a(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->b:Ljava/lang/String;

    .line 1391
    const/4 v0, 0x1

    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDateFormat;->a(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->c:Ljava/lang/String;

    .line 1392
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->a:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
