.class Lorg/apache/commons/lang3/time/FastDateFormat$e;
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
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$e;->a:Ljava/lang/String;

    .line 969
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    return-void
.end method
