.class Lcom/batescorp/pebble/nav/processor/NavHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/processor/NavHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

.field g:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

.field final synthetic h:Lcom/batescorp/pebble/nav/processor/NavHandler;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/processor/NavHandler;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iput-object p1, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->h:Lcom/batescorp/pebble/nav/processor/NavHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->a:J

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->b:Ljava/lang/String;

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->c:Ljava/lang/String;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->d:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->e:Ljava/lang/String;

    .line 268
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 269
    iput-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavHandler$b;->g:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    return-void
.end method
