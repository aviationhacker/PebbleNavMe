.class Lorg/eclipse/jetty/util/Scanner$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lorg/eclipse/jetty/util/Scanner$a;->a:J

    .line 78
    iput-wide p3, p0, Lorg/eclipse/jetty/util/Scanner$a;->b:J

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 90
    instance-of v1, p1, Lorg/eclipse/jetty/util/Scanner$a;

    if-eqz v1, :cond_0

    .line 92
    check-cast p1, Lorg/eclipse/jetty/util/Scanner$a;

    .line 93
    iget-wide v2, p1, Lorg/eclipse/jetty/util/Scanner$a;->a:J

    iget-wide v4, p0, Lorg/eclipse/jetty/util/Scanner$a;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lorg/eclipse/jetty/util/Scanner$a;->b:J

    iget-wide v4, p0, Lorg/eclipse/jetty/util/Scanner$a;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 95
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/eclipse/jetty/util/Scanner$a;->a:J

    long-to-int v0, v0

    iget-wide v2, p0, Lorg/eclipse/jetty/util/Scanner$a;->b:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/util/Scanner$a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/util/Scanner$a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
