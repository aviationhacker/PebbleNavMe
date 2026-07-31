.class public final enum Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum MASK:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum SEEK_EOF:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field public static final enum START:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

.field private static final synthetic b:[Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v4, v4}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "OPCODE"

    invoke-direct {v0, v1, v3, v3}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "LENGTH_7"

    invoke-direct {v0, v1, v5, v3}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "LENGTH_16"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "LENGTH_63"

    invoke-direct {v0, v1, v6, v7}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "MASK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "PAYLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v7, v3}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    const-string v1, "SEEK_EOF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->SEEK_EOF:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v2, v0, v1

    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v2, v0, v1

    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->SEEK_EOF:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->b:[Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->a:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->b:[Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455$State;->a:I

    return v0
.end method
