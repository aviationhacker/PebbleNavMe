.class final Lgx$h;
.super Lgx$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgx",
        "<TK;TV;>.g<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgx;


# direct methods
.method constructor <init>(Lgx;)V
    .locals 0

    .prologue
    .line 4376
    iput-object p1, p0, Lgx$h;->a:Lgx;

    invoke-direct {p0, p1}, Lgx$g;-><init>(Lgx;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4380
    invoke-virtual {p0}, Lgx$h;->e()Lgx$ak;

    move-result-object v0

    invoke-virtual {v0}, Lgx$ak;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
