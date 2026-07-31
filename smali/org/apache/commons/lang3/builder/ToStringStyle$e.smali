.class final Lorg/apache/commons/lang3/builder/ToStringStyle$e;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2217
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2218
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$e;->setUseClassName(Z)V

    .line 2219
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$e;->setUseIdentityHashCode(Z)V

    .line 2220
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$e;->setUseFieldNames(Z)V

    .line 2221
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$e;->setContentStart(Ljava/lang/String;)V

    .line 2222
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$e;->setContentEnd(Ljava/lang/String;)V

    .line 2223
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2230
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
