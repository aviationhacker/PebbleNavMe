.class final Ljj$w;
.super Ljj$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj",
        "<TK;TV;>.h<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 0

    .prologue
    .line 3724
    iput-object p1, p0, Ljj$w;->a:Ljj;

    invoke-direct {p0, p1}, Ljj$h;-><init>(Ljj;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3728
    invoke-virtual {p0}, Ljj$w;->e()Ljj$ae;

    move-result-object v0

    invoke-virtual {v0}, Ljj$ae;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
