.class Lorg/eclipse/jetty/http/HttpGenerator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/io/Buffer;

.field b:Lorg/eclipse/jetty/io/Buffer;

.field c:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator$a;-><init>()V

    return-void
.end method
