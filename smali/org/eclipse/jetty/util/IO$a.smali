.class Lorg/eclipse/jetty/util/IO$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/IO$1;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lorg/eclipse/jetty/util/IO$a;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 484
    const/4 v0, -0x1

    return v0
.end method
