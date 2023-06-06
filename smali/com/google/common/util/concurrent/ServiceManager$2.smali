.class final Lcom/google/common/util/concurrent/ServiceManager$2;
.super Lly$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lly$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/ServiceManager$Listener;->stopped()V

    .line 134
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/google/common/util/concurrent/ServiceManager$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$2;->a(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V

    return-void
.end method
