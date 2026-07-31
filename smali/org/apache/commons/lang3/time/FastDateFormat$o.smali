.class Lorg/apache/commons/lang3/time/FastDateFormat$o;
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
    name = "o"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDateFormat$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1075
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$o;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDateFormat$o;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat$o;->a:Lorg/apache/commons/lang3/time/FastDateFormat$o;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 1103
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 1104
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1109
    :goto_0
    return-void

    .line 1106
    :cond_0
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1107
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$o;->a(Ljava/lang/StringBuffer;I)V

    .line 1097
    return-void
.end method
