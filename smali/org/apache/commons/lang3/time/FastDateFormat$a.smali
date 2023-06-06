.class Lorg/apache/commons/lang3/time/FastDateFormat$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$a;->a:C

    .line 938
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 951
    iget-char v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$a;->a:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 952
    return-void
.end method
