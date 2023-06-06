.class final Lil$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lil;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lil$c;->a:Lil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lil$c;->b:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lil$c;->a:Lil;

    iget-object v1, p0, Lil$c;->b:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lil;->a(Lil;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
