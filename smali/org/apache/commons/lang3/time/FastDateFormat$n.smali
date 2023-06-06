.class Lorg/apache/commons/lang3/time/FastDateFormat$n;
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
    name = "n"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDateFormat$n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$n;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDateFormat$n;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$n;->a:Lorg/apache/commons/lang3/time/FastDateFormat$n;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1247
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1248
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1249
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$n;->a(Ljava/lang/StringBuffer;I)V

    .line 1241
    return-void
.end method
