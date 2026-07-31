.class Lhf$1;
.super Lhf$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhf;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.b<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhf;


# direct methods
.method constructor <init>(Lhf;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lhf$1;->a:Lhf;

    invoke-direct {p0, p1}, Lhf$b;-><init>(Lhf;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1204
    return-object p2
.end method
