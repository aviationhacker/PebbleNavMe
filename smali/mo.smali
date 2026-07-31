.class public Lmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmo;->b:Lorg/slf4j/spi/LocationAwareLogger;

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lmo;->b:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
