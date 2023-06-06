.class Liy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Liy$a;->a:Ljava/util/EnumMap;

    .line 111
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Liy;

    iget-object v1, p0, Liy$a;->a:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liy;-><init>(Ljava/util/EnumMap;Liy$1;)V

    return-object v0
.end method
