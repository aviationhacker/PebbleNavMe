.class Lcom/google/common/util/concurrent/ServiceManager$d$2;
.super Lly$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$d;->b(Lcom/google/common/util/concurrent/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lly$a",
        "<",
        "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Service;

.field final synthetic b:Lcom/google/common/util/concurrent/ServiceManager$d;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$d;Ljava/lang/String;Lcom/google/common/util/concurrent/Service;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$d$2;->b:Lcom/google/common/util/concurrent/ServiceManager$d;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ServiceManager$d$2;->a:Lcom/google/common/util/concurrent/Service;

    invoke-direct {p0, p2}, Lly$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d$2;->a:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->failure(Lcom/google/common/util/concurrent/Service;)V

    .line 696
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 693
    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$d$2;->a(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method
