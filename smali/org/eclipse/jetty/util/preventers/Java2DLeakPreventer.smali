.class public Lorg/eclipse/jetty/util/preventers/Java2DLeakPreventer;
.super Lorg/eclipse/jetty/util/preventers/AbstractLeakPreventer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/eclipse/jetty/util/preventers/AbstractLeakPreventer;-><init>()V

    return-void
.end method


# virtual methods
.method public prevent(Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    const-string v0, "sun.java2d.Disposer"

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    sget-object v1, Lorg/eclipse/jetty/util/preventers/Java2DLeakPreventer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
