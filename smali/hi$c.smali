.class Lhi$c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhi;


# direct methods
.method constructor <init>(Lhi;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lhi$c;->a:Lhi;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lhi$c;->a:Lhi;

    invoke-virtual {v0}, Lhi;->clear()V

    .line 204
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lhi$c;->a:Lhi;

    invoke-virtual {v0, p1}, Lhi;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lhi$c;->a:Lhi;

    invoke-virtual {v0}, Lhi;->g()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lhi$c;->a:Lhi;

    invoke-virtual {v0}, Lhi;->size()I

    move-result v0

    return v0
.end method
