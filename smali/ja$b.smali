.class Lja$b;
.super Lja;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lja",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lja;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lja",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lja;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Lja$b;->a:Lja;

    .line 82
    return-void
.end method


# virtual methods
.method final a()Lja;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lja$b;->a:Lja;

    return-object v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
