.class public abstract Lkt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkt$a;,
        Lkt$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static a()Lkt;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lkt$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkt$b;-><init>(Lkt$1;)V

    return-object v0
.end method

.method public static b()Lkt;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lkt$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkt$a;-><init>(Lkt$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lku;",
            ">;)V"
        }
    .end annotation
.end method
