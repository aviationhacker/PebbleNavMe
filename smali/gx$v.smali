.class Lgx$v;
.super Lgx$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$b",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile j:Lgx$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILgx$p;)V
    .locals 1
    .param p3    # Lgx$p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1071
    invoke-direct {p0}, Lgx$b;-><init>()V

    .line 1086
    invoke-static {}, Lgx;->o()Lgx$z;

    move-result-object v0

    iput-object v0, p0, Lgx$v;->j:Lgx$z;

    .line 1072
    iput-object p1, p0, Lgx$v;->g:Ljava/lang/Object;

    .line 1073
    iput p2, p0, Lgx$v;->h:I

    .line 1074
    iput-object p3, p0, Lgx$v;->i:Lgx$p;

    .line 1075
    return-void
.end method


# virtual methods
.method public a()Lgx$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v0, p0, Lgx$v;->j:Lgx$z;

    return-object v0
.end method

.method public a(Lgx$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$z",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1095
    iput-object p1, p0, Lgx$v;->j:Lgx$z;

    .line 1096
    return-void
.end method

.method public b()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v0, p0, Lgx$v;->i:Lgx$p;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lgx$v;->h:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lgx$v;->g:Ljava/lang/Object;

    return-object v0
.end method
