.class final Lgx$e;
.super Lgx$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgx",
        "<TK;TV;>.g<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgx;


# direct methods
.method constructor <init>(Lgx;)V
    .locals 0

    .prologue
    .line 4444
    iput-object p1, p0, Lgx$e;->a:Lgx;

    invoke-direct {p0, p1}, Lgx$g;-><init>(Lgx;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4448
    invoke-virtual {p0}, Lgx$e;->e()Lgx$ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4444
    invoke-virtual {p0}, Lgx$e;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
