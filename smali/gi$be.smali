.class final Lgi$be;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "be"
.end annotation


# static fields
.field static final a:[Lgi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lgi$a;

    const/4 v1, 0x0

    new-instance v2, Lgi$be$1;

    const-string v3, "0\u0082\u0003\u00c90\u0082\u0002\u00b1\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a9\u00b3\u00af\u001f\\\u00bb\u001c60"

    invoke-static {v3}, Lgi$a;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lgi$be$1;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lgi$be;->a:[Lgi$a;

    return-void
.end method
