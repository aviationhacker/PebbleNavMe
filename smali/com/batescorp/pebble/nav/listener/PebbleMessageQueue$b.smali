.class Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;


# direct methods
.method public constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 161
    iput-object p3, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->b:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public a()Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$b;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    return-object v0
.end method
