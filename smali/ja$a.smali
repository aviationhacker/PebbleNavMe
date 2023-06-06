.class final Lja$a;
.super Lja$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lja$b",
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lja;Lja;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lja",
            "<TK;TV;>;",
            "Lja",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lja$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lja;)V

    .line 106
    iput-object p4, p0, Lja$a;->a:Lja;

    .line 107
    return-void
.end method


# virtual methods
.method b()Lja;
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
    .line 112
    iget-object v0, p0, Lja$a;->a:Lja;

    return-object v0
.end method
