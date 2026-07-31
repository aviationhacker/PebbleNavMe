.class public Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/ByteArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    .line 430
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 435
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
