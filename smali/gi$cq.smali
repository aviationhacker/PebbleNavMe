.class final Lgi$cq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "cq"
.end annotation


# static fields
.field static final a:[Lgi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lgi$a;

    const/4 v1, 0x0

    new-instance v2, Lgi$cq$1;

    const-string v3, "0\u0082\u0003\u00b90\u0082\u0002\u00a1\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a1\u009a\u00dcLn\u0013\u000c\u00bb0"

    invoke-static {v3}, Lgi$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgi$cq$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lgi$cq$2;

    const-string v3, "0\u0082\u0003\u00b90\u0082\u0002\u00a1\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d4:\u00a5\u00bb\u00bdO}\u008c0"

    invoke-static {v3}, Lgi$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgi$cq$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lgi$cq;->a:[Lgi$a;

    return-void
.end method
