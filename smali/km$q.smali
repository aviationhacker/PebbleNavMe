.class Lkm$q;
.super Lkm$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$h",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0, p1, p2}, Lkm$h;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 410
    return-void
.end method
