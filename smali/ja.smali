.class public Lja;
.super Lix;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "unnecessary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja$a;,
        Lja$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lix",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lix;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-static {p1, p2}, Lhu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method static a(I)[Lja;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-array v0, p0, [Lja;

    return-object v0
.end method


# virtual methods
.method a()Lja;
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
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

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
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
