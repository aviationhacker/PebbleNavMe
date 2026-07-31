.class final Lcom/google/common/util/concurrent/AbstractService$3;
.super Lly$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)Lly$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lly$a",
        "<",
        "Lcom/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V
    .locals 0

    .prologue
    .line 83
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractService$3;->a:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, p1}, Lly$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/Service$Listener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$3;->a:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/Service$Listener;->terminated(Lcom/google/common/util/concurrent/Service$State;)V

    .line 86
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$3;->a(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
