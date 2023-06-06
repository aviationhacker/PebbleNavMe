.class public Lorg/eclipse/jetty/io/View$CaseInsensitive;
.super Lorg/eclipse/jetty/io/View;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/eclipse/jetty/io/View;-><init>()V

    .line 233
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;IIII)V
    .locals 0

    .prologue
    .line 237
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;IIII)V

    .line 238
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 248
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/io/Buffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
