.class Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field volatile b:Z

.field final synthetic c:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->c:Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    .line 56
    iput-object p2, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
