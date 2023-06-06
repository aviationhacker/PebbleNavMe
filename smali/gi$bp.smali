.class final Lgi$bp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "bp"
.end annotation


# static fields
.field static final a:[Lgi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lgi$a;

    const/4 v1, 0x0

    new-instance v2, Lgi$bp$1;

    const-string v3, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c3\u0014\u00bc\u00c9\u0014\u0015\u00dcK0"

    invoke-static {v3}, Lgi$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgi$bp$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lgi$bp$2;

    const-string v3, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0090y?\t$\u00f5Y\u00870"

    invoke-static {v3}, Lgi$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgi$bp$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lgi$bp;->a:[Lgi$a;

    return-void
.end method
