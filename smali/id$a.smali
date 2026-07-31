.class final Lid$a;
.super Lid$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lid$c",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lid;

.field private final c:I


# direct methods
.method constructor <init>(Lid;I)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lid$a;->a:Lid;

    .line 166
    invoke-static {p1}, Lid;->d(Lid;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lid$c;-><init>(I)V

    .line 167
    iput p2, p0, Lid$a;->c:I

    .line 168
    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lid$a;->a:Lid;

    invoke-static {v0}, Lid;->c(Lid;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    iget v1, p0, Lid$a;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method b_()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lid$a;->a:Lid;

    invoke-static {v0}, Lid;->e(Lid;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
